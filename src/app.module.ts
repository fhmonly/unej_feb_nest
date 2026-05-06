import { Module } from '@nestjs/common';
import { ThrottlerModule } from '@nestjs/throttler';
import { AppController } from './app.controller';
import { CacheModule } from './cache/cache.module';
import { DatabaseModule } from './database/infrastructure/database.module';
import { AccreditationModule } from './modules/accreditation/accreditation.module';
import { AuthModule } from './modules/auth/auth.module';
import { LecturesModule } from './modules/lectures/lectures.module';
import { NewsModule } from './modules/news/news.module';
import { PartnershipModule } from './modules/partnerships/partnership.module';
import { PhotoGalleryModule } from './modules/photo-gallery/photo-gallery.module';
import { ResearchGroupModule } from './modules/research-group/research-group.module';
import { StaffsModule } from './modules/staffs/staffs.module';
import { StaticContentModule } from './modules/static-content/static-content.module';
import { StudyProgramModule } from './modules/study-program/study-program.module';
import { VideoGalleryModule } from './modules/video-gallery/video-gallery.module';

@Module({
  imports: [
    ThrottlerModule.forRoot({
      throttlers: [
        {
          ttl: 60_000,
          limit: 100,
        },
      ],
    }),
    DatabaseModule,
    CacheModule,
    AuthModule,
    NewsModule,
    PhotoGalleryModule,
    VideoGalleryModule,
    StaticContentModule,
    StudyProgramModule,
    AccreditationModule,
    PartnershipModule,
    LecturesModule,
    ResearchGroupModule,
    StaffsModule,
  ],
  controllers: [AppController],
})
export class AppModule {}
