import { Request, Response } from 'express'
import client from '../../db/connector'

class ExampleController {
  get = async (request: Request, response: Response) => {
    response.send('Hello, world!')
  }

  post = async (request: Request, response: Response) => {
    await client.connect()
    await client.set(request.body.id, JSON.stringify({...request.body}))

    response.send({...request.body})
  }
}

export default ExampleController
