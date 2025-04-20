import express from "express"
import ExampleController from '../../controllers/example/index'

const router: express.Router = express.Router()

const exampleController = new ExampleController()

/**
 * @openapi
 * /v1:
 *   get:
 *     description: Example get controller
 *     responses:
 *       200:
 *         description: Returns "Hello, world!".
 */
router
  .route('/')
  .get(exampleController.get)

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

export default router
