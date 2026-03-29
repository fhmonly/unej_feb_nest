import { ApiProperty, ApiPropertyOptional, PartialType } from '@nestjs/swagger';
import {
  IsArray,
  IsInt,
  IsNotEmpty,
  IsOptional,
  IsString,
  MaxLength,
} from 'class-validator';

export class AddMembersToResearchGroupDto {
  @ApiProperty({
    type: [Number],
    example: [2, 3, 4],
    description: 'Lecture IDs as members',
  })
  @IsArray()
  @IsInt({ each: true })
  memberIds!: number[];
}

export class CreateResearchGroupDto {
  @ApiProperty({ example: 'Artificial Intelligence Research Group' })
  @IsString()
  @IsNotEmpty()
  @MaxLength(255)
  name!: string;

  @ApiPropertyOptional({ example: 'Fokus pada AI, ML, dan Data Science' })
  @IsOptional()
  @IsString()
  @MaxLength(255)
  description?: string;

  @ApiPropertyOptional({ example: 1, description: 'Lecture ID as coordinator' })
  @IsInt()
  @IsOptional()
  coordinatorId?: number;

  @ApiPropertyOptional({ example: 'https://domain.com/roadmap.pdf' })
  @IsOptional()
  @IsString()
  @MaxLength(255)
  roadmap?: string;

  @ApiPropertyOptional({
    type: [Number],
    example: [2, 3, 4],
    description: 'Lecture IDs as members',
  })
  @IsOptional()
  @IsArray()
  @IsInt({ each: true })
  memberIds?: number[];
}

export class UpdateResearchGroupDto extends PartialType(
  CreateResearchGroupDto,
) {}
