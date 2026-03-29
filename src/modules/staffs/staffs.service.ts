import { Injectable } from '@nestjs/common';
import { InferInsertModel } from 'drizzle-orm';
import { staffs } from 'src/database/schemas/staff.schema';
import { StaffsRepository } from './staffs.repository';

@Injectable()
export class StaffsService {
  constructor(private readonly repo: StaffsRepository) {}

  async getStaffs(page: number, limit: number) {
    page = Math.max(page, 1);
    const offset = (page - 1) * limit;
    return await this.repo.getStaffs(limit, offset);
  }

  async getStaff(id: number) {
    return await this.repo.getStaff(id);
  }

  async createStaff(payload: InferInsertModel<typeof staffs>) {
    return await this.repo.createStaff(payload);
  }

  async updateStaff(
    id: number,
    payload: Partial<InferInsertModel<typeof staffs>>,
  ) {
    return await this.repo.updateStaff(id, payload);
  }

  async deleteStaff(id: number) {
    return await this.repo.deleteStaff(id);
  }
}
