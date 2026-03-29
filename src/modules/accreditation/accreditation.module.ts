import { Module } from '@nestjs/common';
import { AccreditationController } from './accreditation.controller';
import { AccreditationRepository } from './accreditation.repository';
import { AccreditationService } from './accreditation.service';

@Module({
  controllers: [AccreditationController],
  providers: [AccreditationRepository, AccreditationService],
  exports: [],
})
export class AccreditationModule {}
