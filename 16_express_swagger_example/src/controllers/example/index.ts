import { Request, Response } from 'express'
import { randomUUID } from 'crypto'

class ExampleController {
  get = async (_request: Request, response: Response) => {
    response.send('Hello, world!')
  }

  post = async (request: Request, response: Response) => {
    const uuid: string = randomUUID()

    const responseBody = {
        uuid,
        ...request.body
    }

    response.status(201).send(responseBody)
  }
}

export default ExampleController
