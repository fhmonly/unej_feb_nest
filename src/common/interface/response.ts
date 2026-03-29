export interface IResponse {
    success: boolean;
    message?: string;
    data?: unknown;
    meta?: unknown;
}

export interface PaginationResponseMeta {
    total: number;
    page: number;
    limit: number;
}

export interface IResponseSuccess<
    T extends Record<string, any>[] = Record<string, any>[],
    M extends Record<string, any> = PaginationResponseMeta
> extends IResponse {
    success: true;
    message?: string;
    data?: T;
    meta?: M;
}

export interface IResponseError extends IResponse {
    success: false;
    message?: string;
}