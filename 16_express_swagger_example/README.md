# 16_express_swagger_example

Простой пример реализации автодокументирования API за счёт написания подробных JSDOC-комментариев ([swagger-jsdoc](https://www.npmjs.com/package/swagger-jsdoc)) и отображения интерактивного интерфейса через [swagger-ui-express](https://www.npmjs.com/package/swagger-ui-express).

Пример:

```typescript
/**
 * @openapi
 * /v1/testCreate:
 *   post:
 *     produces:
 *       - application/json
 *     parameters:
 *       - name: username
 *         in: formData
 *         required: true
 *         type: string
 *     responses:
 *       200:
 *         description: Returns a created object.
 */
```

## Установка и запуск

```bash
npm install
npm run dev
```

Документация доступна по адресу `http://localhost:3000/docs/`.
