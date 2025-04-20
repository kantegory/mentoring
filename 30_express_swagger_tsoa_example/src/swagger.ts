import { Express, Response, Request } from 'express';
import * as swaggerUi from 'swagger-ui-express';

export function useSwagger(app: Express): Express {
    try {
        app.use(
            '/docs',
            swaggerUi.serve,
            async (_req: Request, res: Response) => {
                res.send(
                    swaggerUi.generateHTML(
                        await import(__dirname + '/../build/swagger.json'),
                    ),
                );
            },
        );

        return app;
    } catch (error) {
        console.error('Ошибка настройки Swagger:', error);
        return app;
    }
}
