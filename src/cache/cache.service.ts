// cache/cache.service.ts
import { CACHE_MANAGER } from '@nestjs/cache-manager';
import { Inject, Injectable } from '@nestjs/common';
import type { Cache } from 'cache-manager';

@Injectable()
export class CacheService {
  constructor(@Inject(CACHE_MANAGER) private cache: Cache) {}

  async get<T>(key: string): Promise<T | null> {
    return (await this.cache.get(key)) as T;
  }

  async set(key: string, value: any, ttl?: number) {
    await this.cache.set(key, value, ttl);
  }

  async del(key: string) {
    await this.cache.del(key);
  }

  async getNumber(key: string): Promise<number> {
    const val = await this.cache.get<number>(key);
    return val ?? 1;
  }

  async incr(key: string): Promise<number> {
    const client = (this.cache.stores as any).client;
    return client.incr(key); // Redis INCR
  }

  async setIfNotExists(key: string, value: number) {
    const client = (this.cache.stores as any).client;
    await client.setnx(key, value);
  }
}
