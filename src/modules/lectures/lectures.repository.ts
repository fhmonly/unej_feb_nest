import { Injectable } from '@nestjs/common';
import { count, eq, InferInsertModel } from 'drizzle-orm';
import { DatabaseService } from 'src/database/infrastructure/database.service';
import { lectures } from 'src/database/schemas/lectures.schema';

@Injectable()
export class LecturesRepository {
  constructor(private readonly dbService: DatabaseService) {}

  db() {
    return this.dbService.db;
  }

  async getLectures(limit: number, offset: number) {
    return {
      lectures: await this.db()
        .select()
        .from(lectures)
        .limit(limit)
        .offset(offset),
      total: await this.db()
        .select({ count: count() })
        .from(lectures)
        .then((res) => res[0].count),
    };
  }

  async createLecture(data: InferInsertModel<typeof lectures>) {
    const [lecture] = await this.db()
      .insert(lectures)
      .values(data)
      .$returningId();
    return lecture.id;
  }

  async updateLecture(
    id: number,
    data: Partial<InferInsertModel<typeof lectures>>,
  ) {
    return await this.db()
      .update(lectures)
      .set(data)
      .where(eq(lectures.id, id));
  }

  async deleteLecture(id: number) {
    return await this.db().delete(lectures).where(eq(lectures.id, id));
  }
}
