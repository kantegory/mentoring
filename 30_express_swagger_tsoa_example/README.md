# 30 express swagger tsoa example

Простой пример реализации автодокументирования API за счёт использования tsoa ([tsoa](https://www.npmjs.com/package/tsoa)). Пример:

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

        return {
            uuid,
            ...body,
        };
    }
}
```
