import { Injectable } from '@nestjs/common';
import { InferInsertModel } from 'drizzle-orm';
import { normalizeSlug } from 'src/common/utils/slug';
import { news } from 'src/database/schemas/news.schema';
import { NewsRepository } from './news.repository';

type NewsPayload = Omit<InferInsertModel<typeof news>, 'slug'> & {
  slug?: string;
};

@Injectable()
export class NewsService {
  constructor(private readonly newsRepository: NewsRepository) {}

  async getNews(
    page: number,
    limit: number,
    orderBy: 'asc' | 'desc' = 'desc',
    categorySlug?: string,
    tag?: string,
  ) {
    page = Math.max(page, 1);
    const offset = (page - 1) * limit;

    return await this.newsRepository.getNews(
      limit,
      offset,
      orderBy,
      categorySlug,
      tag,
    );
  }

  async getNewsDetailBySlug(slug: string) {
    return await this.newsRepository.getNewsDetailBySlug(slug);
  }

  async getNewsCategories() {
    return await this.newsRepository.getNewsCategories();
  }

  async deleteNews(id: number) {
    return await this.newsRepository.deleteNews(id);
  }

  async insertNews(payload: NewsPayload) {
    const slugSplitterString = '_-_';
    const slugMaxLength = 100;

    const rawSlug =
      payload.slug || payload.title.replace(/\s+/g, '-').toLowerCase();

    const slugArray = rawSlug.split(slugSplitterString);
    const [pureSlug, slugSuffix] = slugArray;

    const slug = normalizeSlug(pureSlug, slugMaxLength);

    try {
      return await this.newsRepository.insertNews({
        ...payload,
        slug: slugSuffix ? `${slug}${slugSplitterString}${slugSuffix}` : slug,
      });
    } catch (error: any) {
      const { cause } = error;

      if (cause.code === 'ER_DUP_ENTRY') {
        const slugDate = new Date(slugSuffix);
        const isSlugSuffixDateFormatted =
          !isNaN(slugDate.getTime()) && slugDate.getTime() >= 1;

        const now = new Date().toISOString();
        const onlyTime = now.slice(11, 19).replace(/:/g, '');

        const slugDateStr = isSlugSuffixDateFormatted
          ? slugDate.toISOString()
          : now;
        const onlyDate = slugDateStr.slice(0, 10);

        let newSlug = '';

        if (isSlugSuffixDateFormatted)
          newSlug = `${slug}${slugSplitterString}${onlyDate}-${onlyTime}`;
        else newSlug = `${slug}${slugSplitterString}${onlyDate}`;

        return await this.insertNews({
          ...payload,
          slug: newSlug,
        });
      }

      throw error;
    }
  }

  async updateNews(id: number, payload: Partial<NewsPayload>) {
    return await this.newsRepository.updateNews(id, payload);
  }
}
