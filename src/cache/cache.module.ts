// cache.module.ts
import { RedisModule, RedisModuleOptions } from '@liaoliaots/nestjs-redis';
import { Global, Module } from '@nestjs/common';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { APP_INTERCEPTOR } from '@nestjs/core';
import { CacheInterceptor } from './cache.interceptor';
import { CacheService } from './cache.service';

@Global()
@Module({
  imports: [
    RedisModule.forRootAsync({
      imports: [ConfigModule],
      inject: [ConfigService],
      useFactory: (configService): RedisModuleOptions => {
        const config = configService as ConfigService;
        return {
          config: {
            host: config.get<string>('REDIS_HOST', 'localhost'),
            port: config.get<number>('REDIS_PORT', 6379),
            password: config.get<string>('REDIS_PASSWORD', ''),
            db: 0,
          },
        };
      },
    }),
  ],
  providers: [
    CacheService,
    {
      provide: APP_INTERCEPTOR,
      useClass: CacheInterceptor,
    },
  ],
  exports: [RedisModule, CacheService],
})
export class CacheModule {}
