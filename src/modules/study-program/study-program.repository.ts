import { Injectable } from '@nestjs/common';
import { eq, getTableColumns, InferInsertModel } from 'drizzle-orm';
import { DatabaseService } from 'src/database/infrastructure/database.service';
import { degrees, majors } from 'src/database/schemas/study-program.schema';

@Injectable()
export class StudyProgramRepository {
  constructor(private readonly dbService: DatabaseService) {}

  private get db() {
    return this.dbService.db;
  }

  async getDegrees() {
    const { createdAt: _createdAt, ...degreesCols } = getTableColumns(degrees);
    return await this.db.select(degreesCols).from(degrees);
  }

  async getMajors() {
    const {
      id: _id,
      createdAt: _createdAt,
      ...degreesCols
    } = getTableColumns(degrees);

    const { id, createdAt, degreeId, ...majorsCols } = getTableColumns(majors);

    return await this.db
      .select({
        ...majorsCols,
        degree: {
          ...degreesCols,
        },
      })
      .from(majors)
      .innerJoin(degrees, eq(degrees.id, majors.degreeId));
  }

  async insertDegree(payload: InferInsertModel<typeof degrees>) {
    const [user] = await this.db.insert(degrees).values(payload).$returningId();
    return user.id;
  }

  async insertMajor(payload: InferInsertModel<typeof majors>) {
    const [user] = await this.db.insert(majors).values(payload).$returningId();
    return user.id;
  }

  async updateDegree(
    id: number,
    payload: Partial<InferInsertModel<typeof degrees>>,
  ) {
    return await this.db.update(degrees).set(payload).where(eq(degrees.id, id));
  }

  async updateMajor(
    id: number,
    payload: Partial<InferInsertModel<typeof majors>>,
  ) {
    return await this.db.update(majors).set(payload).where(eq(majors.id, id));
  }

  async deleteDegree(id: number) {
    return await this.db.delete(degrees).where(eq(degrees.id, id));
  }

  async deleteMajor(id: number) {
    return await this.db.delete(majors).where(eq(majors.id, id));
  }
}
