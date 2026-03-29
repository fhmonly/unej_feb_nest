import dotenv from "dotenv";
dotenv.config();

export function getEnv<T extends string = string, D extends T = T>(
    key: string,
    defaultValue: D,
    required: boolean = false
): T {
    const value = process.env[key] as T;
    if (required && !value) {
        console.error(`
            ============================================
            .env: ${key} is required
            ============================================
            `)
        throw new Error(`Some keys inside .env are missing. Please check terminal logs for more details.`);
    }
    return value || defaultValue;
}