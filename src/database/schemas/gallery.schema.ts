import { int, mysqlTable, timestamp, varchar } from 'drizzle-orm/mysql-core';

export const photoGallery = mysqlTable('photo_gallery', {
  id: int('id').primaryKey().autoincrement(),
  image: varchar('image', { length: 255 }).notNull(),
  title: varchar('title', { length: 255 }),
  createdAt: timestamp('created_at').defaultNow(),
});

export const videoGallery = mysqlTable('video_gallery', {
  id: int('id').primaryKey().autoincrement(),
  videoUrl: varchar('video_url', { length: 255 }).notNull(),
  thumbnail: varchar('thumbnail', { length: 255 }),
  title: varchar('title', { length: 255 }),
  createdAt: timestamp('created_at').defaultNow(),
});
