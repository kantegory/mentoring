const fs = require('fs');
const swaggerJsdoc = require('swagger-jsdoc');

const options = {
  definition: {
    openapi: '3.0.0',
    info: {
      title: 'Hello World',
      version: '1.0.0',
    },
  },
  apis: ['./src/routes/example/*.ts'], // files containing annotations as above
};

const openapiSpecification = swaggerJsdoc(options);
fs.writeFileSync("./src/swagger.json", JSON.stringify(openapiSpecification));
