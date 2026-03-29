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
import { AccessGuard } from 'src/guard/access.guard';
import {
  CreateVideoGalleryDto,
  GetVideoGalleryQueryDTO,
  UpdateVideoGalleryDto,
} from './video-gallery.dto';
import { VideoGalleryService } from './video-gallery.service';

@Controller('video-gallery')
export class VideoGalleryController {
  constructor(private readonly galleryService: VideoGalleryService) {}

  @Get()
  async getGallery(@Query() query: GetVideoGalleryQueryDTO) {
    const { orderBy = 'desc' } = query;

    const page = Number(query.page) || 1;
    const limit = Number(query.limit) || 10;

    const total = (await this.galleryService.getTotalGallery()) ?? 0;
    const gallery =
      (await this.galleryService.getGallery(page, limit, orderBy)) ?? [];

    return {
      data: gallery,
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
  async createGallery(@Body() body: CreateVideoGalleryDto) {
    return await this.galleryService.insertGallery(body);
  }

  @Put(':id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async updateGallery(
    @Param('id', ParseIntPipe) id: number,
    @Body() body: UpdateVideoGalleryDto,
  ) {
    return await this.galleryService.updateGallery(id, body);
  }

  @Delete(':id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async deleteGallery(@Param('id', ParseIntPipe) id: number) {
    return await this.galleryService.deleteGallery(id);
  }
}
