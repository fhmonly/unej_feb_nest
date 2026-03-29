import { Injectable } from '@nestjs/common';
import { InferInsertModel } from 'drizzle-orm';
import { difference } from 'lodash';
import { researchGroups } from 'src/database/schemas/research-groups.schema';
import { ResearchGroupRepository } from './research-group.repository';

@Injectable()
export class ResearchGroupService {
  constructor(private readonly repo: ResearchGroupRepository) {}

  async getResearchGroup() {
    return await this.repo.getResearchGroup();
  }

  async createResearchGroup(
    payload: InferInsertModel<typeof researchGroups>,
    memberID?: number[],
  ) {
    const { id } = await this.repo.createResearchGroup(payload);
    if (memberID) {
      const memberIds = [...new Set(memberID)];
      await this.repo.addMembers(id, memberIds);
    }
    return 'Research group created successfully';
  }

  async updateResearchGroup(
    id: number,
    payload: Partial<InferInsertModel<typeof researchGroups>>,
    memberID?: number[],
  ) {
    await this.repo.updateResearchGroup(id, payload);

    if (!!memberID?.length) {
      const currentMember = (await this.repo.getMembers(id)).map(
        (member) => member.memberId,
      );
      const incomingMember = [...new Set(memberID)];

      const deletedMember = difference(currentMember, incomingMember);
      const addedMember = difference(incomingMember, currentMember);

      if (deletedMember.length > 0) {
        await this.repo.removeMembers(id, deletedMember);
      }

      if (addedMember.length > 0) {
        await this.repo.addMembers(id, addedMember);
      }
    }

    return 'Research group updated successfully';
  }

  async deleteResearchGroup(id: number) {
    return await this.repo.deleteResearchGroup(id);
  }

  async addMemberToResearchGroup(id: number, memberIds: number[]) {
    const currentMember = (await this.repo.getMembers(id)).map(
      (member) => member.memberId,
    );

    const incomingMember = [...new Set(memberIds)];

    const addedMember = difference(incomingMember, currentMember);
    return await this.repo.addMembers(id, addedMember);
  }

  async removeMemberFromResearchGroup(id: number, memberIds: number[]) {
    const currentMember = (await this.repo.getMembers(id)).map(
      (member) => member.memberId,
    );

    const incomingMember = [...new Set(memberIds)];
    const deletedMember = difference(currentMember, incomingMember);

    return await this.repo.removeMembers(id, deletedMember);
  }
}
