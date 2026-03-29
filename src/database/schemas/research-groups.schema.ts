import { int, mysqlTable, timestamp, varchar } from 'drizzle-orm/mysql-core';
import { lectures } from './lectures.schema';

export const researchGroups = mysqlTable('research_groups', {
  id: int('id').primaryKey().autoincrement(),
  name: varchar('name', { length: 255 }).notNull(),
  description: varchar('description', { length: 255 }),
  coordinatorId: int('coordinator').references(() => lectures.id),
  roadmap: varchar('roadmap', { length: 255 }),
  createdAt: timestamp('created_at').defaultNow(),
});

export const researchGroupMembers = mysqlTable('research_group_members', {
  id: int('id').primaryKey().autoincrement(),
  researchGroupId: int('research_group_id')
    .notNull()
    .references(() => researchGroups.id),
  memberId: int('member_id')
    .notNull()
    .references(() => lectures.id),
  createdAt: timestamp('created_at').defaultNow(),
});
