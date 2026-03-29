import { Injectable } from '@nestjs/common';
import { InferInsertModel } from 'drizzle-orm';
import { staticContent } from 'src/database/schemas/static-content.schema';
import { StaticContentRepository } from './static-content.repository';

@Injectable()
export class StaticContentService {
  constructor(private readonly repo: StaticContentRepository) {}

  async getStaticContent() {
    return await this.repo.getStaticContent();
  }

  async getStaticContentByKey(key: string) {
    return await this.repo.getStaticContentByKey(key);
  }

  async updateStaticContent(
    key: string,
    payload: Partial<InferInsertModel<typeof staticContent>>,
  ) {
    return await this.repo.updateStaticContent(key, payload);
  }

  async insertStaticContent(payload: InferInsertModel<typeof staticContent>) {
    try {
      return await this.repo.insertStaticContent(payload);
    } catch (error: any) {
      return await this.repo.insertStaticContent({
        ...payload,
        key: `${payload.key}-${Date.now()}`,
      });
    }
  }

  async deleteStaticContent(key: string) {
    return await this.repo.deleteStaticContent(key);
  }
}
