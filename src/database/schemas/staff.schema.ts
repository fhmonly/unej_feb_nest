import {
  int,
  mysqlTable,
  text,
  timestamp,
  varchar,
} from 'drizzle-orm/mysql-core';

export const staffs = mysqlTable('staffs', {
  id: int('id').primaryKey().autoincrement(),
  photo: varchar('photo', { length: 255 }),
  name: varchar('name', { length: 60 }).notNull(),
  nip: varchar('nip', { length: 20 }),
  email: varchar('email', { length: 255 }).notNull(),
  academicLevel: varchar('academic_level', { length: 60 }),
  attachments: text('attachments'),
  frontTitle: varchar('front_title', { length: 20 }),
  backTitle: varchar('back_title', { length: 100 }),
  nidn: varchar('nidn', { length: 20 }),
  nuptk: varchar('nuptk', { length: 20 }),
  createdAt: timestamp('created_at').defaultNow(),
});
