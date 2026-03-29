import { Injectable } from '@nestjs/common';
import { count, eq, InferInsertModel } from 'drizzle-orm';
import { DatabaseService } from 'src/database/infrastructure/database.service';
import { partnerships } from 'src/database/schemas/partnerships.schema';

@Injectable()
export class PartnershipRepository {
  constructor(private readonly dbService: DatabaseService) {}

  private get db() {
    return this.dbService.db;
  }

  async getPartnerships(limit: number, offset: number) {
    return {
      partnerships: await this.db
        .select()
        .from(partnerships)
        .limit(limit)
        .offset(offset),
      total: await this.db
        .select({ count: count() })
        .from(partnerships)
        .limit(limit)
        .offset(offset)
        .then((res) => res[0].count),
    };
  }

  async createPartnership(payload: InferInsertModel<typeof partnerships>) {
    const [user] = await this.db
      .insert(partnerships)
      .values(payload)
      .$returningId();
    return user.id;
  }

  async updatePartnership(
    id: number,
    payload: Partial<InferInsertModel<typeof partnerships>>,
  ) {
    return await this.db
      .update(partnerships)
      .set(payload)
      .where(eq(partnerships.id, id));
  }

  async deletePartnership(id: number) {
    return await this.db.delete(partnerships).where(eq(partnerships.id, id));
  }
}
