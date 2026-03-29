import { Module } from '@nestjs/common';
import { VideoGalleryController } from './video-gallery.controller';
import { VideoGalleryRepository } from './video-gallery.repository';
import { VideoGalleryService } from './video-gallery.service';

@Module({
  controllers: [VideoGalleryController],
  providers: [VideoGalleryRepository, VideoGalleryService],
  exports: [],
})
export class VideoGalleryModule {}
