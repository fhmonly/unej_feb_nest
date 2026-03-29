import { Injectable } from '@nestjs/common';
import {
  and,
  eq,
  getTableColumns,
  inArray,
  InferInsertModel,
} from 'drizzle-orm';
import { alias } from 'drizzle-orm/mysql-core';
import { DatabaseService } from 'src/database/infrastructure/database.service';
import { lectures } from 'src/database/schemas/lectures.schema';
import {
  researchGroupMembers,
  researchGroups,
} from 'src/database/schemas/research-groups.schema';

@Injectable()
export class ResearchGroupRepository {
  constructor(private readonly dbService: DatabaseService) {}

  private get db() {
    return this.dbService.db;
  }

  async getResearchGroup() {
    const { createdAt: _createdAt, ...researchGroupCols } =
      getTableColumns(researchGroups);

    const coordinator = alias(lectures, 'coordinator');
    const member = alias(lectures, 'member');

    return await this.db
      .select({
        ...researchGroupCols,

        coordinator: {
          id: coordinator.id,
          name: coordinator.name,
          frontTitle: coordinator.frontTitle,
          backTitle: coordinator.backTitle,
        },

        member: {
          id: member.id,
          name: member.name,
          frontTitle: member.frontTitle,
          backTitle: member.backTitle,
        },
      })
      .from(researchGroups)
      .leftJoin(coordinator, eq(researchGroups.coordinatorId, coordinator.id))
      .leftJoin(
        researchGroupMembers,
        eq(researchGroups.id, researchGroupMembers.researchGroupId),
      )
      .leftJoin(member, eq(researchGroupMembers.memberId, member.id));
  }

  async createResearchGroup(payload: InferInsertModel<typeof researchGroups>) {
    const result = await this.db
      .insert(researchGroups)
      .values(payload)
      .$returningId();
    return result[0];
  }

  async updateResearchGroup(id: number, payload: any) {
    return await this.db
      .update(researchGroups)
      .set(payload)
      .where(eq(researchGroups.id, id));
  }

  async deleteResearchGroup(id: number) {
    return await this.db
      .delete(researchGroups)
      .where(eq(researchGroups.id, id));
  }

  async getMembers(researchGroupId: number) {
    const { memberId } = getTableColumns(researchGroupMembers);
    return await this.db
      .select({ memberId })
      .from(researchGroupMembers)
      .where(eq(researchGroupMembers.researchGroupId, researchGroupId));
  }

  async addMembers(researchGroupId: number, memberIds: number[]) {
    return await this.db
      .insert(researchGroupMembers)
      .values(memberIds.map((id) => ({ researchGroupId, memberId: id })));
  }

  async removeMembers(researchGroupId: number, memberId: number[]) {
    return await this.db
      .delete(researchGroupMembers)
      .where(
        and(
          eq(researchGroupMembers.researchGroupId, researchGroupId),
          inArray(researchGroupMembers.memberId, memberId),
        ),
      );
  }
}
