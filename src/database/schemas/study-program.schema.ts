import { int, mysqlTable, timestamp, varchar } from 'drizzle-orm/mysql-core';

export const degrees = mysqlTable('degrees', {
  id: int('id').primaryKey().autoincrement(),
  name: varchar('name', { length: 255 }).notNull(),
  degreeCode: varchar('degree_code', { length: 255 }).notNull(),
  createdAt: timestamp('created_at').defaultNow(),
});

export const majors = mysqlTable('majors', {
  id: int('id').primaryKey().autoincrement(),
  name: varchar('name', { length: 255 }).notNull(),
  majorCode: varchar('major_code', { length: 255 }).notNull(),
  degreeId: int('degree_id')
    .notNull()
    .references(() => degrees.id),
  createdAt: timestamp('created_at').defaultNow(),
});
