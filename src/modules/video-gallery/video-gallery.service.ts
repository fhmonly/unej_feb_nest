import { Injectable } from '@nestjs/common';
import { InferInsertModel } from 'drizzle-orm';
import { videoGallery } from 'src/database/schemas/gallery.schema';
import { VideoGalleryRepository } from './video-gallery.repository';

@Injectable()
export class VideoGalleryService {
  constructor(private readonly galleryRepository: VideoGalleryRepository) {}

  async getGallery(
    limit: number,
    offset: number,
    orderBy: 'asc' | 'desc' = 'desc',
  ) {
    return await this.galleryRepository.getVideoGallery(limit, offset, orderBy);
  }

  async getTotalGallery() {
    return await this.galleryRepository.getTotalVideoGallery();
  }

  async deleteGallery(id: number) {
    return await this.galleryRepository.deleteVideoGallery(id);
  }

  async insertGallery(payload: InferInsertModel<typeof videoGallery>) {
    return await this.galleryRepository.insertVideoGallery(payload);
  }

  async updateGallery(
    id: number,
    payload: Partial<InferInsertModel<typeof videoGallery>>,
  ) {
    return await this.galleryRepository.updateVideoGallery(id, payload);
  }
}
