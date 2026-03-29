import { Injectable } from '@nestjs/common';
import { asc, count, desc, eq, InferInsertModel } from 'drizzle-orm';
import { DatabaseService } from 'src/database/infrastructure/database.service';
import { videoGallery } from 'src/database/schemas/gallery.schema';

@Injectable()
export class VideoGalleryRepository {
  constructor(private readonly dbService: DatabaseService) {}

  db() {
    return this.dbService.db;
  }

  async getTotalVideoGallery() {
    const result = await this.db()
      .select({ total: count() })
      .from(videoGallery);
    return result[0].total;
  }

  async getVideoGallery(
    limit: number,
    offset: number,
    orderBy: 'asc' | 'desc' = 'desc',
  ) {
    const order =
      orderBy === 'desc'
        ? desc(videoGallery.createdAt)
        : asc(videoGallery.createdAt);

    return await this.db()
      .select()
      .from(videoGallery)
      .orderBy(order)
      .limit(limit)
      .offset(offset);
  }

  async deleteVideoGallery(id: number) {
    return await this.db().delete(videoGallery).where(eq(videoGallery.id, id));
  }

  async insertVideoGallery(payload: InferInsertModel<typeof videoGallery>) {
    const [user] = await this.db()
      .insert(videoGallery)
      .values(payload)
      .$returningId();
    return user.id;
  }

  async updateVideoGallery(
    id: number,
    payload: Partial<InferInsertModel<typeof videoGallery>>,
  ) {
    return await this.db()
      .update(videoGallery)
      .set(payload)
      .where(eq(videoGallery.id, id));
  }
}
