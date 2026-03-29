import ms from "ms";
import { getEnv } from "src/common/utils/env";

export const AUTH_ACCESS_TOKEN_SECRET = getEnv("JWT_ACCESS_SECRET", "", true);
export const AUTH_ACCESS_TOKEN_EXPIRES_IN = getEnv<ms.StringValue>("JWT_ACCESS_EXPIRES_IN", "15m");
export const AUTH_ACCESS_TOKEN_EXPIRES_IN_NUMBER: number = isNaN(+AUTH_ACCESS_TOKEN_EXPIRES_IN) ?
    ms(AUTH_ACCESS_TOKEN_EXPIRES_IN) :
    +AUTH_ACCESS_TOKEN_EXPIRES_IN;
export const AUTH_REFRESH_TOKEN_SECRET = getEnv("JWT_REFRESH_SECRET", "", true);
export const AUTH_REFRESH_TOKEN_EXPIRES_IN = getEnv<ms.StringValue>("JWT_REFRESH_EXPIRES_IN", "14d");
export const AUTH_REFRESH_TOKEN_EXPIRES_IN_NUMBER: number = isNaN(+AUTH_REFRESH_TOKEN_EXPIRES_IN) ?
    ms(AUTH_REFRESH_TOKEN_EXPIRES_IN) :
    +AUTH_REFRESH_TOKEN_EXPIRES_IN;