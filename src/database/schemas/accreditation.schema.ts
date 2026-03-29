import {
  date,
  int,
  mysqlTable,
  timestamp,
  varchar,
} from 'drizzle-orm/mysql-core';
import { majors } from './study-program.schema';

export const accreditation = mysqlTable('accreditation', {
  id: int('id').primaryKey().autoincrement(),
  name: varchar('name', { length: 255 }).notNull(),
  accredited: varchar('accredited', { length: 255 }).notNull(),
  accreditedBy: varchar('accredited_by', { length: 255 }).notNull(),
  level: varchar('level', { length: 255 }),
  startDate: date('start_date').notNull(),
  endDate: date('end_date').notNull(),
  attachment: varchar('attachment', { length: 255 }),
  majorId: int('major_id').references(() => majors.id),
  createdAt: timestamp('created_at').defaultNow(),
});
