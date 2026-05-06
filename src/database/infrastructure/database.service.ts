import { Injectable, OnModuleInit } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { drizzle, MySql2Database } from 'drizzle-orm/mysql2';
import { createPool, Pool } from 'mysql2/promise';

@Injectable()
export class DatabaseService implements OnModuleInit {
  private pool!: Pool;
  private _db!: MySql2Database;

  constructor(private readonly config: ConfigService) {}

  public get db() {
    return this._db;
  }

  async onModuleInit() {
    const DB_USERNAME = this.config.get('DB_USERNAME', 'root'),
      DB_PASSWORD = this.config.get('DB_PASSWORD', ''),
      DB_HOST = this.config.get('DB_HOST', 'localhost'),
      DB_PORT = this.config.get('DB_PORT', '3306'),
      DB_DATABASE = this.config.get('DB_DATABASE', 'unej_feb');

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
  }

  async close() {
    await this.pool.end();
    console.log('Database connection closed');
  }
}
