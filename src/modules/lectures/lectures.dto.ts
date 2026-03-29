import { ApiProperty, ApiPropertyOptional, PartialType } from '@nestjs/swagger';
import {
  IsEmail,
  IsNotEmpty,
  IsOptional,
  IsString,
  MaxLength,
} from 'class-validator';
import { PaginationDTO } from 'src/dto/pagination.dto';

// DTO tambahan
export class AttachmentDto {
  @ApiProperty()
  name!: string;

  @ApiProperty()
  url!: string;
}

export class GetLectureQueryDto extends PaginationDTO {}

export class CreateLectureDto {
  @ApiPropertyOptional({ example: 'https://domain.com/photo.jpg' })
  @IsOptional()
  @IsString()
  @MaxLength(255)
  photo?: string;

  @ApiProperty({ example: 'Dr. John Doe' })
  @IsString()
  @IsNotEmpty()
  @MaxLength(60)
  name!: string;

  @ApiPropertyOptional({ example: '1987654321' })
  @IsOptional()
  @IsString()
  @MaxLength(20)
  nip?: string;

  @ApiProperty({ example: 'john.doe@university.ac.id' })
  @IsEmail()
  @MaxLength(255)
  email!: string;

  @ApiPropertyOptional({ example: 'Lektor Kepala' })
  @IsOptional()
  @IsString()
  @MaxLength(60)
  academicLevel?: string;

  @ApiPropertyOptional({ example: 'Artificial Intelligence, Data Mining' })
  @IsOptional()
  @IsString()
  @MaxLength(255)
  researchInterest?: string;

  @ApiPropertyOptional({ example: '12345678' })
  @IsOptional()
  @IsString()
  @MaxLength(20)
  sintaId?: string;

  @ApiPropertyOptional({ example: '87654321' })
  @IsOptional()
  @IsString()
  @MaxLength(20)
  scopusId?: string;

  @ApiPropertyOptional({
    example: '[{"name":"CV","url":"https://..."}]',
    description: 'JSON string for attachments',
    type: [AttachmentDto],
  })
  @IsOptional()
  attachments?: AttachmentDto[];

  @ApiPropertyOptional({ example: 'Dr.' })
  @IsOptional()
  @IsString()
  @MaxLength(20)
  frontTitle?: string;

  @ApiPropertyOptional({ example: 'S.Kom., M.Kom.' })
  @IsOptional()
  @IsString()
  @MaxLength(100)
  backTitle?: string;

  @ApiPropertyOptional({ example: '0123456789' })
  @IsOptional()
  @IsString()
  @MaxLength(20)
  nidn?: string;

  @ApiPropertyOptional({ example: '9876543210' })
  @IsOptional()
  @IsString()
  @MaxLength(20)
  nuptk?: string;
}

export class UpdateLectureDto extends PartialType(CreateLectureDto) {}
