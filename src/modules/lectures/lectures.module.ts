import { Module } from '@nestjs/common';
import { LecturesController } from './lectures.controller';
import { LecturesRepository } from './lectures.repository';
import { LecturesService } from './lectures.service';

@Module({
  controllers: [LecturesController],
  providers: [LecturesRepository, LecturesService],
  exports: [],
})
export class LecturesModule {}
