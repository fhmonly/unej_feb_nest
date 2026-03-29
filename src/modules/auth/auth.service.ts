import { ConflictException, Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import bcrypt from 'bcrypt';
import { AUTH_REFRESH_TOKEN_SECRET } from './auth.constant';
import { AuthRegisterDTO } from './auth.dto';
import { AuthRepository } from './auth.repository';
import { AuthJwtService } from './jwt.service';

@Injectable()
export class AuthService {
  constructor(
    private readonly repo: AuthRepository,
    private readonly jwtService: JwtService,
    private readonly authJwtService: AuthJwtService,
  ) {}

  async register(payload: AuthRegisterDTO) {
    try {
      const hashedPw = await bcrypt.hash(payload.password!, 10);
      await this.repo.createUser({
        name: payload.name!,
        email: payload.email!,
        password: hashedPw,
      });
    } catch (error: any) {
      const {
        cause: { code },
      } = error;
      throw new ConflictException(
        code === 'ER_DUP_ENTRY'
          ? 'User already exists'
          : 'Something went wrong',
      );
    }
    return {
      message: 'New user created!',
    };
  }

  async login(email: string, password: string) {
    try {
      const [user] = await this.repo.findUserByEmail(email);
      if (!user) throw new ConflictException('User not found');

      const isPasswordValid = await bcrypt.compare(password, user.password!);
      if (!isPasswordValid) throw new ConflictException('Invalid password');

      const { id: sub } = user;
      const { access_token, access_token_expires_at } =
        await this.authJwtService.generateAccessToken({
          sub,
        });

      const { refresh_token, refresh_token_expires_at, refresh_token_jti } =
        await this.authJwtService.generateRefreshToken({
          sub,
        });

      const token_id = `${sub}-${refresh_token_jti}`;

      const hashedRefreshToken = await bcrypt.hash(refresh_token, 10);
      await this.repo.createSession({
        userId: user.id,
        refreshTokenHash: hashedRefreshToken,
        expiresAt: refresh_token_expires_at,
        token_id,
      });

      return {
        access_token,
        access_token_expires_at: access_token_expires_at.toISOString(),
        refresh_token,
        refresh_token_expires_at: refresh_token_expires_at.toISOString(),
      };
    } catch (error) {
      throw new ConflictException('Invalid credentials');
    }
  }

  async generateAccessToken(refreshToken: string) {
    try {
      const refreshTokenPayload = this.jwtService.verify(refreshToken, {
        secret: AUTH_REFRESH_TOKEN_SECRET,
      });
      const token_id = `${refreshTokenPayload.sub}-${refreshTokenPayload.jti}`;
      const [refreshTokenFound] =
        await this.repo.findActiveSessionByJti(token_id);

      const valid = await bcrypt.compare(
        refreshToken,
        refreshTokenFound.refreshTokenHash!,
      );
      if (!valid) throw new ConflictException('Invalid refresh token');

      const accessToken = await this.authJwtService.generateAccessToken({
        sub: refreshTokenPayload.sub,
      });

      return accessToken;
    } catch (error) {
      throw new ConflictException('Invalid refresh token');
    }
  }

  async logout(refreshToken: string) {
    try {
      const refreshTokenPayload = this.jwtService.verify(refreshToken, {
        secret: AUTH_REFRESH_TOKEN_SECRET,
      });

      const token_id = `${refreshTokenPayload.sub}-${refreshTokenPayload.jti}`;
      await this.repo.revokeSessionByJti(token_id);
      return {
        message: 'Logout successful',
      };
    } catch (error) {
      throw new ConflictException('Invalid refresh token');
    }
  }

  async logoutAll(refreshToken: string) {
    try {
      const refreshTokenPayload = this.jwtService.verify(refreshToken, {
        secret: AUTH_REFRESH_TOKEN_SECRET,
      });

      await this.repo.revokeSessionByUserId(refreshTokenPayload.sub);
      return {
        message: 'Successfully logged out from all devices',
      };
    } catch (error) {
      throw new ConflictException('Invalid refresh token');
    }
  }
}
