import { ApiProperty, PartialType } from '@nestjs/swagger';
import { IsInt, IsNotEmpty, IsString } from 'class-validator';

export class CreateDegreeDTO {
  @IsString()
  @IsNotEmpty()
  @ApiProperty()
  degree_code!: string;

  @IsString()
  @IsNotEmpty()
  @ApiProperty()
  name!: string;
}

export class UpdateDegreeDTO extends PartialType(CreateDegreeDTO) {}

export class CreateMajorDTO {
  @IsString()
  @IsNotEmpty()
  @ApiProperty()
  name!: string;

  @IsString()
  @IsNotEmpty()
  @ApiProperty()
  major_code!: string;

  @IsInt()
  @IsNotEmpty()
  @ApiProperty()
  degree_id!: number;
}

export class UpdateMajorDTO extends PartialType(CreateMajorDTO) {}
