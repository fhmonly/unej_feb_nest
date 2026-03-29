import { DatabaseService } from '../infrastructure/database.service';
import { newsCategories } from '../schemas/news.schema';

(async function () {
  const dbService = new DatabaseService();
  await dbService.onModuleInit();
  const db = dbService.db;

  await db.insert(newsCategories).values([
    {
      id: 1,
      name: 'Uncategorized',
      slug: 'uncategorized',
    },
    {
      id: 2,
      name: 'News',
      slug: 'news',
    },
    {
      id: 3,
      name: 'Events',
      slug: 'events',
    },
    {
      id: 4,
      name: 'Announcements',
      slug: 'announcements',
    },
    {
      id: 5,
      name: 'Achievements',
      slug: 'achievements',
    },
  ]);

  return;
})();
