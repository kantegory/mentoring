import { Request, Response } from "express"

class ExampleController {
  get = async (request: Request, response: Response) => {
    return response.send('Hello, world!')
  }
}

export default ExampleController
