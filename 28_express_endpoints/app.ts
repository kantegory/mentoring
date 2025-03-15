import express, { Request, Response } from 'express';

const app = express();

app.get("/", (request: Request, response: Response) => {
  response.status(200).send({
    "message": "Hello, world!"
  })
});

app.listen(3000, () => console.log("Server started on http://localhost:3000"));
