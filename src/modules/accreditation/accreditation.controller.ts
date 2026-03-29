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
  CreateAccreditationDto,
  GetAccreditationQueryDto,
  UpdateAccreditationDto,
} from './accreditation.dto';
import { AccreditationService } from './accreditation.service';

@Controller('accreditation')
export class AccreditationController {
  constructor(private readonly accreditationService: AccreditationService) {}

  @Get()
  async getAccreditation(@Query() query: GetAccreditationQueryDto) {
    return await this.accreditationService.getAccreditation(
      query.degree,
      query.major,
    );
  }

  @Post()
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async createAccreditation(@Body() body: CreateAccreditationDto) {
    return await this.accreditationService.createAccreditation({
      ...body,
      startDate: new Date(body.startDate),
      endDate: new Date(body.endDate),
    });
  }

  @Put(':id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async updateAccreditation(
    @Param('id', ParseIntPipe) id: number,
    @Body() body: UpdateAccreditationDto,
  ) {
    return await this.accreditationService.updateAccreditation(id, {
      ...body,
      startDate: body.startDate ? new Date(body.startDate) : undefined,
      endDate: body.endDate ? new Date(body.endDate) : undefined,
    });
  }

  @Delete(':id')
  @UseGuards(AccessGuard)
  @ApiBearerAuth('access-token')
  async deleteAccreditation(@Param('id', ParseIntPipe) id: number) {
    return await this.accreditationService.deleteAccreditation(id);
  }
}
