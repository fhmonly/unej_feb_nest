import 'dotenv/config';
import { Config, defineConfig } from 'drizzle-kit';
import { getEnv } from 'src/common/utils/env';

const host = getEnv("DB_HOST", "localhost"),
    port = +getEnv("DB_PORT", "3306"),
    user = getEnv("DB_USERNAME", "root"),
    database = getEnv("DB_DATABASE", ""),
    password = getEnv("DB_PASSWORD", "");

let mysqlConfig: Config = {
    out: './drizzle',
    schema: './src/database/schemas/**/*.schema.ts',
    dialect: 'mysql',
    dbCredentials: {
        host,
        port,
        user,
        database,
    },
}

if (!!password) Object.assign(mysqlConfig.dbCredentials, {
    password: password
} as typeof mysqlConfig['dbCredentials'])

export default defineConfig(mysqlConfig);