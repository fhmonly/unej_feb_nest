import {
  date,
  int,
  mysqlTable,
  timestamp,
  varchar,
} from 'drizzle-orm/mysql-core';

export const partnerships = mysqlTable('partnerships', {
  id: int('id').primaryKey().autoincrement(),
  partners: varchar('name', { length: 255 }).notNull(),
  activity: varchar('activity', { length: 255 }).notNull(),
  fromDate: date('from_date').notNull(),
  category: varchar('category', { length: 255 }).notNull(),
  createdAt: timestamp('created_at').defaultNow(),
});
