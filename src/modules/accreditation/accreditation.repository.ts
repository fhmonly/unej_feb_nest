import { Injectable } from '@nestjs/common';
import { and, eq, getTableColumns, InferInsertModel, SQL } from 'drizzle-orm';
import { DatabaseService } from 'src/database/infrastructure/database.service';
import { accreditation } from 'src/database/schemas/accreditation.schema';
import { degrees, majors } from 'src/database/schemas/study-program.schema';

@Injectable()
export class AccreditationRepository {
  constructor(private readonly dbService: DatabaseService) {}

  db() {
    return this.dbService.db;
  }

  async getAccreditation(degree_code?: string, major_code?: string) {
    const { createdAt, majorId, ...accreditationCols } =
      getTableColumns(accreditation);

    const whereConditions: SQL[] = [];

    if (degree_code) {
      whereConditions.push(eq(degrees.degreeCode, degree_code));
    }

    if (major_code) {
      whereConditions.push(eq(majors.majorCode, major_code));
    }

    return await this.db()
      .select({
        ...accreditationCols,
        major: {
          name: majors.name,
          majorCode: majors.majorCode,
        },
        degree: {
          name: degrees.name,
          degreeCode: degrees.degreeCode,
        },
      })
      .from(accreditation)
      .leftJoin(majors, eq(accreditation.majorId, majors.id))
      .leftJoin(degrees, eq(majors.degreeId, degrees.id))
      .where(whereConditions.length ? and(...whereConditions) : undefined);
  }

  async insertAccreditation(payload: InferInsertModel<typeof accreditation>) {
    const [user] = await this.db()
      .insert(accreditation)
      .values(payload)
      .$returningId();
    return user.id;
  }

  async updateAccreditation(
    id: number,
    payload: Partial<InferInsertModel<typeof accreditation>>,
  ) {
    return await this.db()
      .update(accreditation)
      .set(payload)
      .where(eq(accreditation.id, id));
  }

  async deleteAccreditation(id: number) {
    return await this.db()
      .delete(accreditation)
      .where(eq(accreditation.id, id));
  }
}
