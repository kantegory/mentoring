# 16 express swagger example

Простой пример реализации автодокументирования API за счёт написания подробных JSDOC-комментариев ([swagger-jsdoc](https://www.npmjs.com/package/swagger-jsdoc)). Пример:

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
 *       - name: password
 *         in: formData
 *         required: true
 *         type: string
 *     description: Test create
 *     responses:
 *       200:
 *         description: Returns a created object.
 */
router
  .route('/testCreate')
  .post(exampleController.post)
```

Для сборки `swagger.json` используется утилита `generateDoc.js`.
