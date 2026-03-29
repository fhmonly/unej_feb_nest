import {
  ApiProperty,
  IntersectionType,
  PartialType,
  PickType,
} from '@nestjs/swagger';
import { IsNotEmpty, IsString } from 'class-validator';
import { BasicFilterDTO } from 'src/dto/basic-filter.dto';
import { PaginationDTO } from 'src/dto/pagination.dto';

export class GetPhotoGalleryQueryDTO extends IntersectionType(
  PaginationDTO,
  PickType(BasicFilterDTO, ['orderBy']),
) {}

export class CreatePhotoGalleryDTO {
  @IsString()
  @IsNotEmpty()
  @ApiProperty({ required: true })
  image!: string;

  @IsString()
  @IsNotEmpty()
  @ApiProperty({ required: true })
  title!: string;
}

export class UpdatePhotoGalleryDTO extends PartialType(CreatePhotoGalleryDTO) {}
