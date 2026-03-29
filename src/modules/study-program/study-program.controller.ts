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
  CreateDegreeDTO,
  CreateMajorDTO,
  UpdateDegreeDTO,
  UpdateMajorDTO,
} from './study-program.dto';
import { StudyProgramService } from './study-program.service';

@Controller('study-programs')
export class StudyProgramController {
  constructor(private readonly studyProgramService: StudyProgramService) {}

  @Get('degrees')
  async getDegree() {
    return await this.studyProgramService.getDegrees();
  }

  @Post('degrees')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async createDegree(@Body() payload: CreateDegreeDTO) {
    return await this.studyProgramService.insertDegree({
      ...payload,
      degreeCode: payload.degree_code,
    });
  }

  @Put('degrees/:id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async updateStudyProgram(
    @Param('id', ParseIntPipe) id: number,
    @Body() payload: UpdateDegreeDTO,
  ) {
    return await this.studyProgramService.updateDegree(id, {
      ...payload,
      degreeCode: payload.degree_code,
    });
  }

  @Delete('degrees/:id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async deleteStudyProgram(@Param('id', ParseIntPipe) id: number) {
    return await this.studyProgramService.deleteDegree(id);
  }

  @Get('majors')
  async getMajors() {
    return await this.studyProgramService.getMajors();
  }

  @Post('majors')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async createMajor(@Body() payload: CreateMajorDTO) {
    return await this.studyProgramService.insertMajor({
      ...payload,
      majorCode: payload.major_code,
      degreeId: payload.degree_id,
    });
  }

  @Put('majors/:id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async updateMajor(
    @Param('id', ParseIntPipe) id: number,
    @Body() payload: UpdateMajorDTO,
  ) {
    return await this.studyProgramService.updateMajor(id, {
      ...payload,
      degreeId: payload.degree_id,
      majorCode: payload.major_code,
    });
  }

  @Delete('majors/:id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async deleteMajor(@Param('id', ParseIntPipe) id: number) {
    return await this.studyProgramService.deleteMajor(id);
  }
}
