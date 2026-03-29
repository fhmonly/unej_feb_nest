import {
  int,
  mysqlTable,
  text,
  timestamp,
  varchar,
} from 'drizzle-orm/mysql-core';

export const newsCategories = mysqlTable('news_categories', {
  id: int('id').primaryKey().autoincrement(),

  name: varchar('name', { length: 255 }).notNull(),

  slug: varchar('slug', { length: 255 }).notNull(),
});

export const news = mysqlTable('news', {
  id: int('id').primaryKey().autoincrement(),

  image: varchar('image', { length: 255 }),

  title: varchar('title', { length: 255 }).notNull(),

  slug: varchar('slug', { length: 255 }).notNull().unique(),

  content: text('content').notNull(),

  author: varchar('author', { length: 100 }),

  categoryId: int('category_id')
    .references(() => newsCategories.id)
    .default(1),

  tags: varchar('tags', { length: 255 }),

  createdAt: timestamp('created_at').defaultNow(),

  updatedAt: timestamp('updated_at').defaultNow().onUpdateNow(),
});
