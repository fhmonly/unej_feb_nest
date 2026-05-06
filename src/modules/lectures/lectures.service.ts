import { Injectable } from '@nestjs/common';
import { InferInsertModel } from 'drizzle-orm';
import { CacheService } from 'src/cache/cache.service';
import { lectures } from 'src/database/schemas/lectures.schema';
import { LecturesRepository } from './lectures.repository';

@Injectable()
export class LecturesService {
  constructor(
    private readonly repo: LecturesRepository,
    private readonly cache: CacheService,
  ) {}

  async getLectures(page: number, limit: number) {
    page = Math.max(page, 1);
    const offset = (page - 1) * limit;
    return await this.repo.getLectures(limit, offset);
  }

  async createLecture(data: InferInsertModel<typeof lectures>) {
    const newLecture = await this.repo.createLecture(data);
    if (newLecture) this.cache.bumpVersion('lectures');
    return newLecture;
  }

  async updateLecture(
    id: number,
    data: Partial<InferInsertModel<typeof lectures>>,
  ) {
    const updatedLecture = await this.repo.updateLecture(id, data);
    if (updatedLecture) this.cache.bumpVersion('lectures');
    return updatedLecture;
  }

  async deleteLecture(id: number) {
    const deletedLecture = await this.repo.deleteLecture(id);
    if (deletedLecture) this.cache.bumpVersion('lectures');
    return deletedLecture;
  }
}
