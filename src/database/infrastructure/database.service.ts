import { Injectable, OnModuleInit } from '@nestjs/common';
import { drizzle, MySql2Database } from 'drizzle-orm/mysql2';
import { createPool, Pool } from 'mysql2/promise';
import { getEnv } from '../../common/utils/env';

@Injectable()
export class DatabaseService implements OnModuleInit {
  private pool!: Pool;
  private _db!: MySql2Database;

  public get db() {
    return this._db;
  }

  async onModuleInit() {
    const DB_USERNAME = getEnv('DB_USERNAME', 'root'),
      DB_PASSWORD = getEnv('DB_PASSWORD', ''),
      DB_HOST = getEnv('DB_HOST', 'localhost'),
      DB_PORT = getEnv('DB_PORT', '3306'),
      DB_DATABASE = getEnv('DB_DATABASE', 'unej_feb');

    const credential = {
      host: DB_HOST,
      port: +DB_PORT,
      user: DB_USERNAME,
      password: DB_PASSWORD,
      database: DB_DATABASE,
    };

    this.pool = createPool({
      ...credential,
      connectionLimit: 10,
    });

    this._db = drizzle(this.pool);

    await this.pool.getConnection();
    console.log('Database connected');
  }

  async close() {
    await this.pool.end();
    console.log('Database connection closed');
  }
}
