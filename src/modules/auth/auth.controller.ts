import { Body, Controller, HttpCode, Post } from '@nestjs/common';
import { AuthLoginDTO, AuthRefreshTokenDTO, AuthRegisterDTO } from './auth.dto';
import { AuthService } from './auth.service';

@Controller('auth')
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Post('register')
  async register(@Body() dto: AuthRegisterDTO) {
    return await this.authService.register(dto);
  }

  @Post('login')
  @HttpCode(200)
  async login(@Body() dto: AuthLoginDTO) {
    return await this.authService.login(dto.email!, dto.password!);
  }

  @Post('refresh-token')
  @HttpCode(200)
  async refreshToken(@Body() dto: AuthRefreshTokenDTO) {
    return await this.authService.generateAccessToken(dto.refresh_token!);
  }

  @Post('logout')
  @HttpCode(200)
  async logout(@Body() dto: AuthRefreshTokenDTO) {
    return await this.authService.logout(dto.refresh_token!);
  }

  @Post('logout-all')
  @HttpCode(200)
  async logoutAll(@Body() dto: AuthRefreshTokenDTO) {
    return await this.authService.logoutAll(dto.refresh_token!);
  }
}
