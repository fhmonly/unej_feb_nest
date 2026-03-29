import { Injectable } from '@nestjs/common';
import { eq, getTableColumns, InferInsertModel } from 'drizzle-orm';
import { DatabaseService } from 'src/database/infrastructure/database.service';
import { staticContent } from 'src/database/schemas/static-content.schema';

@Injectable()
export class StaticContentRepository {
  constructor(private readonly dbService: DatabaseService) {}

  private get db() {
    return this.dbService.db;
  }

  async getStaticContent() {
    return await this.db.select({ key: staticContent.key }).from(staticContent);
  }

  async getStaticContentByKey(key: string) {
    const { content } = getTableColumns(staticContent);
    const result = await this.db
      .select({ content })
      .from(staticContent)
      .where(eq(staticContent.key, key))
      .limit(1);
    return result[0];
  }

  async updateStaticContent(
    key: string,
    payload: Partial<InferInsertModel<typeof staticContent>>,
  ) {
    return await this.db
      .update(staticContent)
      .set(payload)
      .where(eq(staticContent.key, key));
  }

  async insertStaticContent(payload: InferInsertModel<typeof staticContent>) {
    const [user] = await this.db
      .insert(staticContent)
      .values(payload)
      .$returningId();
    return user.id;
  }

  async deleteStaticContent(key: string) {
    return await this.db
      .delete(staticContent)
      .where(eq(staticContent.key, key));
  }
}
