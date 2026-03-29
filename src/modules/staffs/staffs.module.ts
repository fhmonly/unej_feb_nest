import { Module } from '@nestjs/common';
import { StaffsController } from './staffs.controller';
import { StaffsRepository } from './staffs.repository';
import { StaffsService } from './staffs.service';

@Module({
  controllers: [StaffsController],
  providers: [StaffsRepository, StaffsService],
  exports: [],
})
export class StaffsModule {}
