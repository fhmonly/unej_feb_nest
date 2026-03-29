import { Injectable, InternalServerErrorException } from "@nestjs/common";
import { JwtService } from "@nestjs/jwt";
import { AUTH_ACCESS_TOKEN_EXPIRES_IN_NUMBER, AUTH_ACCESS_TOKEN_SECRET, AUTH_REFRESH_TOKEN_EXPIRES_IN_NUMBER, AUTH_REFRESH_TOKEN_SECRET } from './auth.constant';

@Injectable()
export class AuthJwtService {
    constructor(private readonly jwtService: JwtService) { }

    async generateAccessToken(payload: any) {
        const secret = AUTH_ACCESS_TOKEN_SECRET;
        const expiresIn: number = AUTH_ACCESS_TOKEN_EXPIRES_IN_NUMBER
        if (!secret) throw new InternalServerErrorException(".env: JWT_ACCESS_SECRET is not defined");
        const token = await this.jwtService.signAsync(payload, {
            secret,
            expiresIn,
        })
        const expiresAt = new Date(Date.now() + expiresIn);
        return {
            access_token: token,
            access_token_expires_at: expiresAt
        };
    }

    async generateRefreshToken(payload: any) {
        const secret = AUTH_REFRESH_TOKEN_SECRET;
        const expiresIn: number = AUTH_REFRESH_TOKEN_EXPIRES_IN_NUMBER
        const jti = payload.jti || crypto.randomUUID();

        if (!secret) throw new InternalServerErrorException(".env: JWT_REFRESH_SECRET is not defined");
        const token = await this.jwtService.signAsync({
            ...payload,
            jti,
        }, {
            secret,
            expiresIn
        });
        const expiresAt = new Date(Date.now() + expiresIn);
        return {
            refresh_token: token,
            refresh_token_jti: jti,
            refresh_token_expires_at: expiresAt
        }
    }
}