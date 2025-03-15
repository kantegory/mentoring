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
