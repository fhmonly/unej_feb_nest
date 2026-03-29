import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  ParseIntPipe,
  Post,
  Put,
  UseGuards,
} from '@nestjs/common';
import { ApiBearerAuth } from '@nestjs/swagger';
import { AccessGuard } from 'src/guard/access.guard';
import {
  AddMembersToResearchGroupDto,
  CreateResearchGroupDto,
} from './research-group.dto';
import { ResearchGroupService } from './research-group.service';

@Controller('research-group')
export class ResearchGroupController {
  constructor(private readonly service: ResearchGroupService) {}

  @Get()
  async getAll() {
    return await this.service.getResearchGroup();
  }

  @Post()
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async create(@Body() body: CreateResearchGroupDto) {
    const { memberIds, ...restBody } = body;
    return await this.service.createResearchGroup(restBody, memberIds);
  }

  @Put(':id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async update(
    @Param('id', ParseIntPipe) id: number,
    @Body() body: CreateResearchGroupDto,
  ) {
    const { memberIds, ...restBody } = body;
    return await this.service.updateResearchGroup(id, restBody, memberIds);
  }

  @Delete(':id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async delete(@Param('id', ParseIntPipe) id: number) {
    return await this.service.deleteResearchGroup(id);
  }

  @Put(':id/members')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async addMembers(
    @Param('id', ParseIntPipe) id: number,
    @Body() body: AddMembersToResearchGroupDto,
  ) {
    return await this.service.addMemberToResearchGroup(id, body.memberIds);
  }

  @Delete(':id/members')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async removeMembers(
    @Param('id', ParseIntPipe) id: number,
    @Body() body: AddMembersToResearchGroupDto,
  ) {
    return await this.service.removeMemberFromResearchGroup(id, body.memberIds);
  }
}
