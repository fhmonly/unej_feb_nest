import { Injectable } from '@nestjs/common';
import {
  and,
  asc,
  count,
  desc,
  eq,
  getTableColumns,
  InferInsertModel,
  like,
  SQL,
} from 'drizzle-orm';
import { news, newsCategories } from 'src/database/schemas/news.schema';
import { DatabaseService } from '../../database/infrastructure/database.service';

@Injectable()
export class NewsRepository {
  constructor(private readonly dbService: DatabaseService) {}

  private get db() {
    return this.dbService.db;
  }

  async getNewsCategories() {
    return await this.db.select().from(newsCategories);
  }

  async getNews(
    limit: number,
    offset: number,
    orderBy: 'asc' | 'desc' = 'desc',
    categorySlug?: string,
    tag?: string,
  ) {
    const order =
      orderBy === 'desc' ? desc(news.createdAt) : asc(news.createdAt);

    const { content, categoryId, updatedAt, ...newsCols } =
      getTableColumns(news);
    const { id, ...categoryCols } = getTableColumns(newsCategories);

    const filters: SQL[] = [];

    if (!!categorySlug) filters.push(eq(newsCategories.slug, categorySlug));
    if (!!tag) filters.push(like(news.tags, `%${tag}%`));

    const condition = filters.length ? and(...filters) : undefined;

    return {
      news: await this.db
        .select({
          ...newsCols,
          category: { ...categoryCols },
        })
        .from(news)
        .leftJoin(newsCategories, eq(news.categoryId, newsCategories.id))
        .where(condition)
        .orderBy(order)
        .limit(limit)
        .offset(offset),
      total: await this.db
        .select({
          total: count(),
        })
        .from(news)
        .leftJoin(newsCategories, eq(news.categoryId, newsCategories.id))
        .where(condition)
        .then((result) => result[0].total),
    };
  }

  async getNewsDetailBySlug(slug: string) {
    const result = await this.db
      .select()
      .from(news)
      .where(eq(news.slug, slug))
      .limit(1);
    return result[0];
  }

  async insertNews(payload: InferInsertModel<typeof news>) {
    const [user] = await this.db.insert(news).values(payload).$returningId();
    return user.id;
  }

  async deleteNews(id: number) {
    return await this.db.delete(news).where(eq(news.id, id));
  }

  async updateNews(
    id: number,
    payload: Partial<InferInsertModel<typeof news>>,
  ) {
    return await this.db.update(news).set(payload).where(eq(news.id, id));
  }
}
