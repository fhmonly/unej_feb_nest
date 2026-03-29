import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  ParseIntPipe,
  Post,
  Put,
  Query,
  UseGuards,
} from '@nestjs/common';
import { ApiBearerAuth } from '@nestjs/swagger';
import { AccessGuard } from 'src/guard/access.guard';
import {
  NewsCreateDto,
  NewsDetailParamDTO,
  NewsQueryDTO,
  NewsUpdateDto,
} from './news.dto';
import { NewsService } from './news.service';

@Controller('news')
export class NewsController {
  constructor(private readonly newsService: NewsService) {}

  @Get('/categories')
  async getNewsCategories() {
    return await this.newsService.getNewsCategories();
  }

  @Get()
  async getNews(@Query() query: NewsQueryDTO) {
    const { orderBy = 'desc', category, tag } = query;

    const page = Number(query.page) || 1;
    const limit = Number(query.limit) || 10;

    const { news, total } =
      (await this.newsService.getNews(+page, +limit, orderBy, category, tag)) ??
      [];

    return {
      data: news,
      meta: {
        total,
        page,
        limit,
      },
    };
  }

  @Get('/d/:slug')
  async getNewsDetailBySlug(@Param() param: NewsDetailParamDTO) {
    const result =
      (await this.newsService.getNewsDetailBySlug(param.slug!)) || [];
    return result;
  }

  @Post()
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async insertNews(@Body() body: NewsCreateDto) {
    const { date } = body;

    const createdAt = !!date ? new Date(date) : undefined;

    return await this.newsService.insertNews({
      ...body,
      createdAt,
    });
  }

  @Put(':id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async updateNews(
    @Param('id', ParseIntPipe) param: number,
    @Body() body: NewsUpdateDto,
  ) {
    const { date } = body;

    const createdAt = !!date ? new Date(date) : undefined;

    return await this.newsService.updateNews(+param, {
      ...body,
      createdAt,
    });
  }

  @Delete(':id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async deleteNews(@Param('id', ParseIntPipe) param: NewsDetailParamDTO) {
    return await this.newsService.deleteNews(+param);
  }
}
