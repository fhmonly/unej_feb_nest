import { Injectable } from '@nestjs/common';
import { InferInsertModel } from 'drizzle-orm';
import { photoGallery } from 'src/database/schemas/gallery.schema';
import { PhotoGalleryRepository } from './photo-gallery.repository';

@Injectable()
export class PhotoGalleryService {
  constructor(private readonly galleryRepository: PhotoGalleryRepository) {}

  async getPhotoGallery(
    limit: number,
    offset: number,
    orderBy: 'asc' | 'desc' = 'desc',
  ) {
    return await this.galleryRepository.selectPhotoGallery(
      limit,
      offset,
      orderBy,
    );
  }

  async deletePhotoGallery(id: number) {
    return await this.galleryRepository.deletePhotoGallery(id);
  }

  async insertPhotoGallery(payload: InferInsertModel<typeof photoGallery>) {
    return await this.galleryRepository.insertPhotoGallery(payload);
  }

  async updatePhotoGallery(
    id: number,
    payload: Partial<InferInsertModel<typeof photoGallery>>,
  ) {
    return await this.galleryRepository.updatePhotoGallery(id, payload);
  }

  async getTotalPhotoGallery() {
    return await this.galleryRepository.getTotalPhotoGallery();
  }
}
