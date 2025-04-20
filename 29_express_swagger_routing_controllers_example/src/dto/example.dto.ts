import { IsString, IsDefined, Length } from 'class-validator';

class TestCreateDto {
    @IsDefined({ message: 'Username is required.' })
    @IsString({ message: 'Username must be a valid string.' })
    @Length(3, 20, {
        message: 'Username should have between 3 to 20 characters.',
    })
    public readonly username: string;

    @IsDefined({ message: 'Password is required.' })
    @IsString({ message: 'Password must be a valid string.' })
    @Length(8, 32, {
        message: 'Password should have between 8 to 32 characters.',
    })
    public readonly password: string;
}

class TestCreateResponseDto extends TestCreateDto {
    @IsString()
    public readonly uuid: string;
}

export { TestCreateDto, TestCreateResponseDto };
