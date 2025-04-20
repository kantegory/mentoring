import { Request, Response } from 'express'
import client from '../../db/connector'
import { randomUUID } from 'crypto'

class ExampleController {
  get = async (request: Request, response: Response) => {
    response.send('Hello, world!')
  }

  post = async (request: Request, response: Response) => {
    const uuid: string = randomUUID()
    // await client.connect()
    // await client.set(uuid, JSON.stringify({...request.body}))

    const responseBody = {
        uuid,
        ...request.body
    }

    response.status(201).send(responseBody)
  }
}

export default ExampleController
