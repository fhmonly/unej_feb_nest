import { Injectable } from '@nestjs/common';
import { InferInsertModel } from 'drizzle-orm';
import { degrees, majors } from 'src/database/schemas/study-program.schema';
import { StudyProgramRepository } from './study-program.repository';

@Injectable()
export class StudyProgramService {
  constructor(private readonly repo: StudyProgramRepository) {}

  async getDegrees() {
    return await this.repo.getDegrees();
  }

  async getMajors() {
    return await this.repo.getMajors();
  }

  async insertDegree(payload: InferInsertModel<typeof degrees>) {
    return {
      id: await this.repo.insertDegree(payload),
    };
  }

  async insertMajor(payload: InferInsertModel<typeof majors>) {
    return {
      id: await this.repo.insertMajor(payload),
    };
  }

  async updateDegree(
    id: number,
    payload: Partial<InferInsertModel<typeof degrees>>,
  ) {
    return await this.repo.updateDegree(id, payload);
  }

  async updateMajor(
    id: number,
    payload: Partial<InferInsertModel<typeof majors>>,
  ) {
    return await this.repo.updateMajor(id, payload);
  }

  async deleteDegree(id: number) {
    return await this.repo.deleteDegree(id);
  }

  async deleteMajor(id: number) {
    return await this.repo.deleteMajor(id);
  }
}
