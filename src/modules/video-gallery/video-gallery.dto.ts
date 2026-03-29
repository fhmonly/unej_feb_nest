import { IntersectionType, PartialType, PickType } from '@nestjs/swagger';
import { BasicFilterDTO } from 'src/dto/basic-filter.dto';
import { PaginationDTO } from 'src/dto/pagination.dto';

export class GetVideoGalleryQueryDTO extends IntersectionType(
  PaginationDTO,
  PickType(BasicFilterDTO, ['orderBy']),
) {}

import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { IsOptional, IsString, IsUrl, MaxLength } from 'class-validator';

export class CreateVideoGalleryDto {
  @ApiProperty({
    example: 'https://youtube.com/watch?v=xxxx',
  })
  @IsString()
  @IsUrl()
  @MaxLength(255)
  videoUrl!: string;

  @ApiPropertyOptional({
    example: 'https://cdn.example.com/thumb.jpg',
  })
  @IsOptional()
  @IsString()
  @MaxLength(255)
  thumbnail?: string;

  @ApiPropertyOptional({
    example: 'Company Profile Video',
  })
  @IsOptional()
  @IsString()
  @MaxLength(255)
  title?: string;
}

export class UpdateVideoGalleryDto extends PartialType(CreateVideoGalleryDto) {}
