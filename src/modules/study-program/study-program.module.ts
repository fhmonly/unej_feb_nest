import { Module } from '@nestjs/common';
import { StudyProgramController } from './study-program.controller';
import { StudyProgramRepository } from './study-program.repository';
import { StudyProgramService } from './study-program.service';

@Module({
  controllers: [StudyProgramController],
  providers: [StudyProgramService, StudyProgramRepository],
  exports: [],
})
export class StudyProgramModule {}
