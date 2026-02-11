import express from 'express';
import swaggerUi from 'swagger-ui-express';
import YAML from 'js-yaml';
import fs from 'fs';
import redoc from 'redoc-express';

const app = express();

const swaggerDocument = YAML.load(fs.readFileSync('./tsp-output/schema/openapi.yaml'));

app.get('/docs/redoc', redoc({
    title: 'API Docs',
    specUrl: '/docs/openapi.yaml'
}));

app.get('/docs/openapi.yaml', (req, res) => {
    res.sendFile('./tsp-output/schema/openapi.yaml', { root: process.cwd() });
});  

app.use('/docs', swaggerUi.serve, swaggerUi.setup(swaggerDocument));

app.listen(8000, () => {
    console.log('Server listening at http://localhost:8000/');
})
