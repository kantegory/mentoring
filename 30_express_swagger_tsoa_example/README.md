# 30_express_swagger_tsoa_example

Пример реализации типобезопасного REST API с использованием фреймворка [tsoa](https://tsoa-community.github.io/docs/), JWT-аутентификации (`jsonwebtoken`, `bcrypt`) и генерации OpenAPI спецификации и маршрутов прямо по типам TypeScript.

Пример контроллера:

```typescript
@Route()
@Tags('Example')
export class ExampleController {
    @Post('/testCreate')
    @Response<TestCreateResponseDto>(201, 'Returns a created object.')
    public async post(
        @Body() body: TestCreateDto,
    ): Promise<TestCreateResponseDto> {
        const uuid: string = randomUUID();
        return { uuid, ...body };
    }
}
```

## Установка и запуск

```bash
npm install
npm run dev
```

Документация доступна по адресу `http://localhost:3000/docs/`.
