import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Post,
  Put,
  UseGuards,
} from '@nestjs/common';
import { ApiBearerAuth } from '@nestjs/swagger';
import { AccessGuard } from 'src/guard/access.guard';
import {
  CreateStaticContentDTO,
  UpdateStaticContentDTO,
} from './static-content.dto';
import { StaticContentService } from './static-content.service';

@Controller('static-content')
export class StaticContentController {
  constructor(private readonly staticContentService: StaticContentService) {}

  @Get()
  async getStaticContent() {
    return await this.staticContentService.getStaticContent();
  }

  @Get('/d/:key')
  async getStaticContentByKey(@Param('key') key: string) {
    return await this.staticContentService.getStaticContentByKey(key);
  }

  @Post()
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async insertStaticContent(@Body() body: CreateStaticContentDTO) {
    return await this.staticContentService.insertStaticContent(body);
  }

  @Put(':key')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async updateStaticContent(
    @Param('key') key: string,
    @Body() body: UpdateStaticContentDTO,
  ) {
    return await this.staticContentService.updateStaticContent(key, body);
  }

  @Delete(':key')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async deleteStaticContent(@Param('key') key: string) {
    return await this.staticContentService.deleteStaticContent(key);
  }
}
