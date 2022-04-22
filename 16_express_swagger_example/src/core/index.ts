import express from "express"
import { createServer, Server } from "http"
import routes from "../routes/example/index"
import bodyParser from "body-parser"
import swaggerUi from 'swagger-ui-express'

class App {
  public port: number
  public host: string

  private app: express.Application
  private server: Server

  constructor(port = 8000, host = "localhost") {
      this.port = port
      this.host = host
  
      this.app = this.createApp()
      this.server = this.createServer()
  }
  
  private createApp(): express.Application {
      const app = express()
      app.use(bodyParser.json())
      app.use('/v1', routes)

      // eslint-disable-next-line @typescript-eslint/no-var-requires
      const swaggerDoc = require('../swagger.json')
      app.use('/docs', swaggerUi.serve)
      app.use('/docs', swaggerUi.setup(swaggerDoc))
  
      return app
    }
  
  private createServer(): Server {
      const server = createServer(this.app)
  
      return server
  }

  public start(): void {
      this.server.listen(this.port, () => {
          console.log(`Running server: http://localhost:${this.port}`)
      })
  }
}

export default App
