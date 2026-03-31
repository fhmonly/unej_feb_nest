import { CacheModule } from '@nestjs/cache-manager';
import { Module } from '@nestjs/common';
import { APP_GUARD } from '@nestjs/core';
import { ThrottlerGuard, ThrottlerModule } from '@nestjs/throttler';
import { redisStore } from 'cache-manager-redis-yet';
import { AppController } from './app.controller';
import { CacheModule as MyCacheModule } from './cache/cache.module';
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
    CacheModule.registerAsync({
      isGlobal: true,
      useFactory: async () => ({
        store: await redisStore({
          socket: {
            host: 'localhost',
            port: 6379,
          },
        }),
        ttl: 60, // default TTL
      }),
    }),
    MyCacheModule,
    DatabaseModule,
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
  providers: [
    {
      provide: APP_GUARD,
      useClass: ThrottlerGuard,
    },
  ],
  controllers: [AppController],
})
export class AppModule {}
