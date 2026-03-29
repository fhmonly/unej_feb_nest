import { ApiProperty, PartialType, PickType } from '@nestjs/swagger';
import { IsNotEmpty, IsString, MaxLength } from 'class-validator';

export class CreateStaticContentDTO {
  @IsString()
  @IsNotEmpty()
  @MaxLength(255)
  @ApiProperty()
  key!: string;

  @IsString()
  @IsNotEmpty()
  @ApiProperty()
  content!: string;
}

export class UpdateStaticContentDTO extends PartialType(
  PickType(CreateStaticContentDTO, ['content']),
) {}
