import { ConfigService } from '@nestjs/config';
import bcrypt from 'bcrypt';
import { DatabaseService } from '../infrastructure/database.service';
import { users } from '../schemas/users.schema';

(async function () {
  const config = new ConfigService();
  const dbService = new DatabaseService(config);
  await dbService.onModuleInit();
  const db = dbService.db;

  const pw = await bcrypt.hash('admin', 10);
  await db.insert(users).values({
    email: 'admin@feb.unej.com',
    name: 'admin',
    password: pw,
  });

  return;
})();
