import { ApiProperty, ApiPropertyOptional, PartialType } from '@nestjs/swagger';
import {
  IsEmail,
  IsNotEmpty,
  IsOptional,
  IsString,
  MaxLength,
} from 'class-validator';
import { PaginationDTO } from 'src/dto/pagination.dto';

export class GetStaffQueryDTO extends PaginationDTO {}

export class CreateStaffDto {
  @ApiPropertyOptional({ example: 'https://example.com/photo.jpg' })
  @IsOptional()
  @IsString()
  @MaxLength(255)
  photo?: string;

  @ApiProperty({ example: 'John Doe' })
  @IsNotEmpty()
  @IsString()
  @MaxLength(60)
  name!: string;

  @ApiPropertyOptional({ example: '1987654321' })
  @IsOptional()
  @IsString()
  @MaxLength(20)
  nip?: string;

  @ApiProperty({ example: 'john@example.com' })
  @IsNotEmpty()
  @IsEmail()
  @MaxLength(255)
  email!: string;

  @ApiPropertyOptional({ example: 'S2' })
  @IsOptional()
  @IsString()
  @MaxLength(60)
  academicLevel?: string;

  @ApiPropertyOptional({ example: 'file1.pdf,file2.pdf' })
  @IsOptional()
  @IsString()
  attachments?: string;

  @ApiPropertyOptional({ example: 'Dr.' })
  @IsOptional()
  @IsString()
  @MaxLength(20)
  frontTitle?: string;

  @ApiPropertyOptional({ example: 'M.Kom' })
  @IsOptional()
  @IsString()
  @MaxLength(100)
  backTitle?: string;

  @ApiPropertyOptional({ example: '1234567890' })
  @IsOptional()
  @IsString()
  @MaxLength(20)
  nidn?: string;

  @ApiPropertyOptional({ example: '0987654321' })
  @IsOptional()
  @IsString()
  @MaxLength(20)
  nuptk?: string;
}

export class UpdateStaffDto extends PartialType(CreateStaffDto) {}
