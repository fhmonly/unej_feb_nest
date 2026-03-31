import { Global, Module } from '@nestjs/common';
import { BaseCacheService } from './base-cache.service';
import { CacheKeyFactory } from './cache-key.factory';
import { CacheService } from './cache.service';

@Global()
@Module({
  providers: [CacheKeyFactory, CacheService, BaseCacheService],
  exports: [CacheKeyFactory, CacheService, BaseCacheService],
})
export class CacheModule {}
