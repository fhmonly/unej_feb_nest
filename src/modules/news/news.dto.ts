import {
  ApiProperty,
  ApiPropertyOptional,
  IntersectionType,
  PartialType,
  PickType,
} from '@nestjs/swagger';
import { Type } from 'class-transformer';
import {
  IsDate,
  IsInt,
  IsNotEmpty,
  IsOptional,
  IsString,
  Matches,
  MaxLength,
} from 'class-validator';
import { BasicFilterDTO } from 'src/dto/basic-filter.dto';
import { PaginationDTO } from 'src/dto/pagination.dto';

export class NewsQueryDTO extends IntersectionType(
  PaginationDTO,
  PickType(BasicFilterDTO, ['orderBy']),
) {
  @IsString()
  @IsOptional()
  @ApiProperty({ required: false })
  category?: string;

  @IsString()
  @IsOptional()
  @ApiProperty({ required: false })
  tag?: string;
}

export class NewsDetailParamDTO {
  @IsString()
  @ApiProperty({ required: true })
  slug!: string;
}

export class NewsCreateDto {
  @ApiProperty({ required: false })
  @IsOptional()
  @IsString()
  @MaxLength(255)
  image?: string;

  @ApiProperty({ required: true })
  @IsString()
  @IsNotEmpty()
  @MaxLength(255)
  title!: string;

  @ApiPropertyOptional()
  @IsString()
  @MaxLength(255)
  @Matches(/^[a-z0-9]+(?:-[a-z0-9]+)*$/, {
    message: 'Slug must be lowercase, alphanumeric, and hyphen-separated',
  })
  @IsOptional()
  slug?: string;

  @ApiProperty({ required: true })
  @IsString()
  @IsNotEmpty()
  content!: string;

  @ApiProperty({ required: false })
  @IsOptional()
  @IsString()
  @MaxLength(100)
  author?: string;

  @ApiProperty({ required: false })
  @IsOptional()
  @Type(() => Number)
  @IsInt()
  categoryId?: number;

  @ApiProperty({ required: false })
  @IsOptional()
  @IsString()
  @MaxLength(255)
  tags?: string;

  @ApiPropertyOptional({ type: String, format: 'date' })
  @IsOptional()
  @IsDate()
  @Type(() => Date)
  date?: Date;
}

export class NewsUpdateDto extends PartialType(NewsCreateDto) {}
