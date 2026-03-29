import { Module } from '@nestjs/common';
import { PhotoGalleryController } from './photo-gallery.controller';
import { PhotoGalleryRepository } from './photo-gallery.repository';
import { PhotoGalleryService } from './photo-gallery.service';

@Module({
  controllers: [PhotoGalleryController],
  providers: [PhotoGalleryRepository, PhotoGalleryService],
  exports: [],
})
export class PhotoGalleryModule {}
