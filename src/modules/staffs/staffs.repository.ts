import { Injectable } from '@nestjs/common';
import { count, eq, InferInsertModel } from 'drizzle-orm';
import { DatabaseService } from 'src/database/infrastructure/database.service';
import { staffs } from 'src/database/schemas/staff.schema';

@Injectable()
export class StaffsRepository {
  constructor(private readonly dbService: DatabaseService) {}

  db() {
    return this.dbService.db;
  }

  async getStaffs(limit: number, offset: number) {
    return {
      staffs: await this.db().select().from(staffs).limit(limit).offset(offset),
      total: await this.db()
        .select({ count: count() })
        .from(staffs)
        .then((res) => res[0].count),
    };
  }

  async getStaff(id: number) {
    return await this.db().select().from(staffs).where(eq(staffs.id, id));
  }

  async deleteStaff(id: number) {
    return await this.db().delete(staffs).where(eq(staffs.id, id));
  }

  async updateStaff(
    id: number,
    payload: Partial<InferInsertModel<typeof staffs>>,
  ) {
    return await this.db().update(staffs).set(payload).where(eq(staffs.id, id));
  }

  async createStaff(payload: InferInsertModel<typeof staffs>) {
    return await this.db().insert(staffs).values(payload);
  }
}
