# 29 express swagger routing controllers example

Простой пример реализации автодокументирования API за счёт использования routing-controllers ([routing-controllers](https://www.npmjs.com/package/routing-controllers), [routing-controllers-openapi](https://www.npmjs.com/package/routing-controllers-openapi)). Пример:

```typescript
@JsonController()
export class ExampleController {
    @OpenAPI({ summary: 'Test create' })
    @ResponseSchema(TestCreateResponseDto, { statusCode: 200 })
    @Post('/testCreate')
    post(
        @Body({ type: TestCreateDto }) body: TestCreateDto,
        @Res() response: Response,
    ): void {
        const uuid: string = randomUUID();

        const responseBody = {
            uuid,
            ...body,
        };

        response.status(201).send(responseBody);
    }
}
```

Обратите внимание, что используется не оригинальная зависимость `routing-controllers-openapi`, а мой собственный форк. Отличия только в том, что изменён порядок вызовов внутри функции по определению типа (для фикса ошибки генерации openapi-схемы в tsx-рантайме).
