import { Post, JsonController, Body, Res } from 'routing-controllers';
import { OpenAPI, ResponseSchema } from 'routing-controllers-openapi';
import { randomUUID } from 'crypto';
import { Response } from 'express';
import { TestCreateDto, TestCreateResponseDto } from '../dto/example.dto';

@JsonController()
export class ExampleController {
    @OpenAPI({ summary: 'Test create' })
    @ResponseSchema(TestCreateResponseDto, { statusCode: 200 })
    @Post('/testCreate')
    post(
        @Body({ type: TestCreateDto }) body: TestCreateDto,
        @Res() response: Response,
    ): void {
        const uuid: string = randomUUID();

        const responseBody = {
            uuid,
            ...body,
        };

        response.status(201).send(responseBody);
    }
}
