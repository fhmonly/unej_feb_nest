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
  CreatePartnershipDto,
  GetPartnershipDto,
  UpdatePartnershipDto,
} from './partnership.dto';
import { PartnershipService } from './partnership.service';

@Controller('partnerships')
export class PartnershipController {
  constructor(private readonly partnershipService: PartnershipService) {}

  @Get()
  async getPartnerships(@Query() query: GetPartnershipDto) {
    const page = query.page || 1;
    const limit = query.limit || 10;
    const { partnerships, total } =
      await this.partnershipService.getPartnerships(page, limit);
    return {
      data: partnerships,
      meta: {
        total,
        page,
        limit,
      },
    };
  }

  @Post()
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async createPartnership(@Body() body: CreatePartnershipDto) {
    return await this.partnershipService.createPartnership({
      ...body,
      fromDate: new Date(body.fromDate),
    });
  }

  @Put(':id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async updatePartnership(
    @Param('id', ParseIntPipe) id: number,
    @Body() body: UpdatePartnershipDto,
  ) {
    return await this.partnershipService.updatePartnership(id, {
      ...body,
      fromDate: body.fromDate ? new Date(body.fromDate) : undefined,
    });
  }

  @Delete(':id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async deletePartnership(@Param('id', ParseIntPipe) id: number) {
    return await this.partnershipService.deletePartnership(id);
  }
}
