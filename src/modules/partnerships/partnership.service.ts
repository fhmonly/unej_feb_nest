import { Injectable } from '@nestjs/common';
import { InferInsertModel } from 'drizzle-orm';
import { partnerships } from 'src/database/schemas/partnerships.schema';
import { PartnershipRepository } from './partnership.repository';

@Injectable()
export class PartnershipService {
  constructor(private readonly repo: PartnershipRepository) {}

  async getPartnerships(page: number, limit: number) {
    page = Math.max(page, 1);
    const offset = (page - 1) * limit;
    return await this.repo.getPartnerships(limit, offset);
  }

  async createPartnership(payload: InferInsertModel<typeof partnerships>) {
    return await this.repo.createPartnership(payload);
  }

  async updatePartnership(
    id: number,
    payload: Partial<InferInsertModel<typeof partnerships>>,
  ) {
    return await this.repo.updatePartnership(id, payload);
  }

  async deletePartnership(id: number) {
    return await this.repo.deletePartnership(id);
  }
}
