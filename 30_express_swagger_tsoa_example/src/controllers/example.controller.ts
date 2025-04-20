import { Route, Tags, Post, Response, Body, Controller } from 'tsoa';
import { randomUUID } from 'crypto';
import { TestCreateDto, TestCreateResponseDto } from '../dto/example.dto';

@Route()
@Tags('Example')
export class ExampleController extends Controller {
    @Post('/testCreate')
    @Response<TestCreateResponseDto>(201, 'Returns a created object.')
    public async post(
        @Body() body: TestCreateDto,
    ): Promise<TestCreateResponseDto> {
        const uuid: string = randomUUID();

        return {
            uuid,
            ...body,
        };
    }
}
