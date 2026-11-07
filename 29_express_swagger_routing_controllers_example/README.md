# 29_express_swagger_routing_controllers_example

Пример построения типобезопасного и декларативного REST API на Express с помощью библиотеки `routing-controllers`, валидации входных DTO через `class-validator` и автогенерации спецификации Swagger/OpenAPI ([routing-controllers-openapi](https://www.npmjs.com/package/routing-controllers-openapi)).

Пример контроллера:

```typescript
@JsonController()
export class ExampleController {
    @OpenAPI({ summary: 'Create user' })
    @Post('/users')
    public async create(@Body() body: CreateUserDto) {
        return body;
    }
}
```

## Установка и запуск

```bash
npm install
npm run dev
```

Документация Swagger доступна по адресу `http://localhost:3000/docs/`.
