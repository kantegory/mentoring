interface TestCreateDto {
    username: string; // Обязательное поле
    password: string; // Обязательное поле
}

interface TestCreateResponseDto extends TestCreateDto {
    uuid: string; // UUID, добавляемое сервером
}

export { TestCreateDto, TestCreateResponseDto };
