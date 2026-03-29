import {
  int,
  mysqlTable,
  text,
  timestamp,
  varchar,
} from 'drizzle-orm/mysql-core';

export const staticContent = mysqlTable('static_content', {
  id: int('id').primaryKey().autoincrement(),
  key: varchar('key', { length: 255 }).notNull().unique(),
  content: text('content').notNull(),
  createdAt: timestamp('created_at').defaultNow(),
});
