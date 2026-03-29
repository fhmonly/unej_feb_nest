import { ApiProperty, ApiPropertyOptional, PartialType } from '@nestjs/swagger';
import { Type } from 'class-transformer';
import {
  IsDate,
  IsInt,
  IsNotEmpty,
  IsOptional,
  IsString,
  MaxLength,
} from 'class-validator';

export class CreateAccreditationDto {
  @IsString()
  @IsNotEmpty()
  @MaxLength(255)
  @ApiProperty()
  name!: string;

  @IsString()
  @MaxLength(255)
  @IsOptional()
  @ApiPropertyOptional()
  level?: string;

  @IsString()
  @IsNotEmpty()
  @MaxLength(255)
  @ApiProperty()
  accredited!: string;

  @IsString()
  @IsNotEmpty()
  @MaxLength(255)
  @ApiProperty()
  accreditedBy!: string;

  @ApiProperty({
    type: 'string',
    format: 'date',
  })
  @IsDate()
  @Type(() => Date)
  startDate!: string;

  @ApiProperty({
    type: 'string',
    format: 'date',
  })
  @IsDate()
  @Type(() => Date)
  endDate!: string;

  @IsOptional()
  @IsString()
  @MaxLength(255)
  @ApiProperty()
  attachment?: string;

  @IsInt()
  @ApiPropertyOptional()
  @IsOptional()
  majorId?: number;
}

export class UpdateAccreditationDto extends PartialType(
  CreateAccreditationDto,
) {}

export class GetAccreditationQueryDto {
  @IsString()
  @IsOptional()
  @ApiProperty({
    required: false,
    description: 'degree_code',
    example: 'bachelor',
  })
  degree?: string;

  @IsString()
  @IsOptional()
  @ApiProperty({
    required: false,
    description: 'major_code',
    example: 'company_management',
  })
  major?: string;
}
