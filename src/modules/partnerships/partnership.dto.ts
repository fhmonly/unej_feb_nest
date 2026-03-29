import { ApiProperty, PartialType } from '@nestjs/swagger';
import { IsDateString, IsNotEmpty, IsString, MaxLength } from 'class-validator';
import { PaginationDTO } from 'src/dto/pagination.dto';

export class GetPartnershipDto extends PaginationDTO {}

export class CreatePartnershipDto {
  @IsString()
  @IsNotEmpty()
  @MaxLength(255)
  @ApiProperty()
  partners!: string;

  @IsString()
  @IsNotEmpty()
  @MaxLength(255)
  @ApiProperty()
  activity!: string;

  @IsDateString()
  @ApiProperty()
  fromDate!: string;

  @IsString()
  @IsNotEmpty()
  @MaxLength(255)
  @ApiProperty()
  category!: string;
}

export class UpdatePartnershipDto extends PartialType(CreatePartnershipDto) {}
