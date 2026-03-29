import { Injectable } from '@nestjs/common';
import { asc, count, desc, eq, InferInsertModel } from 'drizzle-orm';
import { DatabaseService } from 'src/database/infrastructure/database.service';
import { photoGallery } from 'src/database/schemas/gallery.schema';

@Injectable()
export class PhotoGalleryRepository {
  constructor(private readonly dbService: DatabaseService) {}

  db() {
    return this.dbService.db;
  }

  async getTotalPhotoGallery() {
    const result = await this.db()
      .select({ total: count() })
      .from(photoGallery);
    return result[0].total;
  }

  async selectPhotoGallery(
    limit: number,
    offset: number,
    orderBy: 'asc' | 'desc' = 'desc',
  ) {
    const order =
      orderBy === 'desc'
        ? desc(photoGallery.createdAt)
        : asc(photoGallery.createdAt);

    return await this.db()
      .select()
      .from(photoGallery)
      .orderBy(order)
      .limit(limit)
      .offset(offset);
  }

  async deletePhotoGallery(id: number) {
    return await this.db().delete(photoGallery).where(eq(photoGallery.id, id));
  }

  async insertPhotoGallery(payload: InferInsertModel<typeof photoGallery>) {
    const [user] = await this.db()
      .insert(photoGallery)
      .values(payload)
      .$returningId();
    return user.id;
  }

  async updatePhotoGallery(
    id: number,
    payload: Partial<InferInsertModel<typeof photoGallery>>,
  ) {
    return await this.db()
      .update(photoGallery)
      .set(payload)
      .where(eq(photoGallery.id, id));
  }
}
