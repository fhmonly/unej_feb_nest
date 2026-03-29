import { Injectable } from '@nestjs/common';
import { InferInsertModel } from 'drizzle-orm';
import { accreditation } from 'src/database/schemas/accreditation.schema';
import { AccreditationRepository } from './accreditation.repository';

@Injectable()
export class AccreditationService {
  constructor(
    private readonly accreditationRepository: AccreditationRepository,
  ) {}

  async getAccreditation(degree_code?: string, major_code?: string) {
    return await this.accreditationRepository.getAccreditation(
      degree_code,
      major_code,
    );
  }

  async createAccreditation(payload: InferInsertModel<typeof accreditation>) {
    return await this.accreditationRepository.insertAccreditation(payload);
  }

  async updateAccreditation(
    id: number,
    payload: Partial<InferInsertModel<typeof accreditation>>,
  ) {
    return await this.accreditationRepository.updateAccreditation(id, payload);
  }

  async deleteAccreditation(id: number) {
    return await this.accreditationRepository.deleteAccreditation(id);
  }
}
