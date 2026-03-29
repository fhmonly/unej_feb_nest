import { Injectable } from '@nestjs/common';
import { InferInsertModel } from 'drizzle-orm';
import { lectures } from 'src/database/schemas/lectures.schema';
import { LecturesRepository } from './lectures.repository';

@Injectable()
export class LecturesService {
  constructor(private readonly repo: LecturesRepository) {}

  async getLectures(page: number, limit: number) {
    page = Math.max(page, 1);
    const offset = (page - 1) * limit;
    return await this.repo.getLectures(limit, offset);
  }

  async createLecture(data: InferInsertModel<typeof lectures>) {
    return await this.repo.createLecture(data);
  }

  async updateLecture(
    id: number,
    data: Partial<InferInsertModel<typeof lectures>>,
  ) {
    return await this.repo.updateLecture(id, data);
  }

  async deleteLecture(id: number) {
    return await this.repo.deleteLecture(id);
  }
}
