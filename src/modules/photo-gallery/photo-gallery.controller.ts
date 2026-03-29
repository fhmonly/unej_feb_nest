import {
  Body,
  Controller,
  Delete,
  Get,
  ParseIntPipe,
  Post,
  Put,
  Query,
  UseGuards,
} from '@nestjs/common';
import { ApiBearerAuth } from '@nestjs/swagger';
import { AccessGuard } from 'src/guard/access.guard';
import {
  CreatePhotoGalleryDTO,
  GetPhotoGalleryQueryDTO,
  UpdatePhotoGalleryDTO,
} from './photo-gallery.dto';
import { PhotoGalleryService } from './photo-gallery.service';

@Controller('photo-gallery')
export class PhotoGalleryController {
  constructor(private readonly galleryService: PhotoGalleryService) {}

  @Get()
  async getPhotoGallery(@Query() query: GetPhotoGalleryQueryDTO) {
    const { orderBy = 'desc' } = query;

    const page = Number(query.page) || 1;
    const limit = Number(query.limit) || 10;

    const total = (await this.galleryService.getTotalPhotoGallery()) ?? 0;
    const gallery =
      (await this.galleryService.getPhotoGallery(page, limit, orderBy)) ?? [];

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
  async insertPhotoGallery(@Body() body: CreatePhotoGalleryDTO) {
    return this.galleryService.insertPhotoGallery(body);
  }

  @Put(':id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async updatePhotoGallery(
    @Query('id', ParseIntPipe) id: number,
    @Body() body: UpdatePhotoGalleryDTO,
  ) {
    return await this.galleryService.updatePhotoGallery(id, body);
  }

  @Delete(':id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async deletePhotoGallery(@Query('id', ParseIntPipe) id: number) {
    return await this.galleryService.deletePhotoGallery(id);
  }
}
