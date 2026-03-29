import { Module } from '@nestjs/common';
import { ResearchGroupController } from './research-group.controller';
import { ResearchGroupRepository } from './research-group.repository';
import { ResearchGroupService } from './research-group.service';

@Module({
  controllers: [ResearchGroupController],
  providers: [ResearchGroupService, ResearchGroupRepository],
  exports: [],
})
export class ResearchGroupModule {}
