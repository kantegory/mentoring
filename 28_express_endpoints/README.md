# Пример 28: написание эндпоинтов на Express

В этом примере рассмотрим 2 способа реализации эндпоинтов на Express (без сторонних библиотек).

Приведены два файла:

- app.ts
- router.ts

Запустить их можно с помощью следующей команды:

```bash
npx tsx filename.ts
```

В файле `app.ts` описан способ написания эндпоинта с помощью `app.get`:

```typescript
import express, { Request, Response } from 'express';

const app = express();

app.get("/", (request: Request, response: Response) => {
  response.status(200).send({
    "message": "Hello, world!"
  })
});

app.listen(3000, () => console.log("Server started on http://localhost:3000"));
```

В файле `router.ts` описан способ написания эндпоинта с помощью `express.Router`:

```typescript
import express, { Request, Response } from 'express';

const app = express();
const router = express.Router();

app.use(router);

const handler = (request: Request, response: Response) => {
  response.status(200).send({
    "message": "Hello, world!"
  })
}

router.route("/").get(handler);

app.listen(3000, () => console.log("Server started on http://localhost:3000"));
```
