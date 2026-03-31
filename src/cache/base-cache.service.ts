import { Injectable } from '@nestjs/common';
import { CacheKeyFactory } from './cache-key.factory';
import { CacheService } from './cache.service';

// cache/base-cache.service.ts
@Injectable()
export class BaseCacheService {
  constructor(
    protected cache: CacheService,
    protected keyFactory: CacheKeyFactory,
  ) {}

  async getOrSet<T>(
    resource: string,
    key: string,
    ttl: number,
    cb: () => Promise<T>,
  ): Promise<T> {
    const version = await this.cache.getNumber(
      this.keyFactory.version(resource),
    );

    const cacheKey = this.keyFactory.paginate(resource, version, key);

    const cached = await this.cache.get<T>(cacheKey);
    if (cached) return cached;

    const data = await cb();

    await this.cache.set(cacheKey, data, ttl);

    return data;
  }

  async invalidate(resource: string) {
    await this.cache.incr(this.keyFactory.version(resource));
  }
}
