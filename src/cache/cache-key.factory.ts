// cache-key.factory.ts
import { Injectable } from '@nestjs/common';

@Injectable()
export class CacheKeyFactory {
  version(resource: string) {
    return `${resource}:version`;
  }

  paginate(
    resource: string,
    version: number,
    key: string, // bisa hash query
  ) {
    return `${resource}:v${version}:${key}`;
  }

  detail(resource: string, version: number, id: string | number) {
    return `${resource}:v${version}:id:${id}`;
  }
}
