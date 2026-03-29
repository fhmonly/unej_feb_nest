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
import { CreateStaffDto, GetStaffQueryDTO, UpdateStaffDto } from './staffs.dto';
import { StaffsService } from './staffs.service';

@Controller('staffs')
export class StaffsController {
  constructor(private readonly staffsService: StaffsService) {}

  @Get()
  async getStaffs(@Query() query: GetStaffQueryDTO) {
    const page = Number(query.page) || 1;
    const limit = Number(query.limit) || 10;

    const { staffs = [], total = 0 } = await this.staffsService.getStaffs(
      page,
      limit,
    );
    return {
      data: staffs,
      meta: {
        total,
        page,
        limit,
      },
    };
  }

  @Get(':id')
  async getStaff(@Param('id', ParseIntPipe) id: number) {
    return await this.staffsService.getStaff(id);
  }

  @Post()
  @ApiBearerAuth('access-token')
  @UseGuards(AccessGuard)
  async createStaff(@Body() payload: CreateStaffDto) {
    return await this.staffsService.createStaff(payload);
  }

  @Put(':id')
  @ApiBearerAuth('access-token')
  @UseGuards(AccessGuard)
  async updateStaff(
    @Param('id', ParseIntPipe) id: number,
    @Body() payload: UpdateStaffDto,
  ) {
    return await this.staffsService.updateStaff(id, payload);
  }

  @Delete(':id')
  @ApiBearerAuth('access-token')
  @UseGuards(AccessGuard)
  async deleteStaff(@Param('id', ParseIntPipe) id: number) {
    return await this.staffsService.deleteStaff(id);
  }
}
