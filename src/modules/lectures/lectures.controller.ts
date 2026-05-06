import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  ParseIntPipe,
  Post,
  Put,
  Query,
  UseGuards,
} from '@nestjs/common';
import { ApiBearerAuth } from '@nestjs/swagger';
import { Cacheable } from 'src/cache/cache.decorator';
import { AccessGuard } from 'src/guard/access.guard';
import { CreateLectureDto, GetLectureQueryDto } from './lectures.dto';
import { LecturesService } from './lectures.service';

@Controller('lectures')
@Cacheable({ resource: 'lectures' })
export class LecturesController {
  constructor(private readonly lecturesService: LecturesService) {}

  @Get()
  async getLectures(@Query() query: GetLectureQueryDto) {
    const page = Number(query.page) || 1;
    const limit = Number(query.limit) || 10;

    const { lectures = [], total = 0 } = await this.lecturesService.getLectures(
      page,
      limit,
    );
    return {
      data: lectures,
      meta: {
        total,
        page,
        limit,
      },
    };
  }

  @Post()
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async createLecture(@Body() body: CreateLectureDto) {
    return await this.lecturesService.createLecture({
      ...body,
      attachments: body.attachments
        ? JSON.stringify(body.attachments)
        : undefined,
    });
  }

  @Put(':id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async updateLecture(
    @Param('id', ParseIntPipe) id: number,
    @Body() body: CreateLectureDto,
  ) {
    return await this.lecturesService.updateLecture(id, {
      ...body,
      attachments: body.attachments
        ? JSON.stringify(body.attachments)
        : undefined,
    });
  }

  @Delete(':id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async deleteLecture(@Param('id', ParseIntPipe) id: number) {
    return await this.lecturesService.deleteLecture(id);
  }
}
