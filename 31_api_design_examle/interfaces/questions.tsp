import "../models/question.tsp";
import "../models/error.tsp";
import "../models/param.tsp";
import "@typespec/http";

using Http;

namespace LMSService;

@route("/api/resource/LMS%20Question")
@tag("Questions")
interface Questions {
  @get list(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @query _?: ListQueryParams): QuestionList | Error;
  @get @route("/{name}") read(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @path name: string): QuestionDetailData | NotFoundError | UnauthorizedError;
  @post create(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @body body: ChoicesQuestion | UserInputQuestion | OpenEndedQuestion): QuestionDetailData | ValidationError | UnauthorizedError | ServerError;
  @put @route("/{name}") update(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @path name: string, @body body: MergePatchUpdate<ChoicesQuestion> | MergePatchUpdate<UserInputQuestion> | MergePatchUpdate<OpenEndedQuestion>): QuestionDetailData | NotFoundError | ValidationError | UnauthorizedError;
  @delete @route("/{name}") delete(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @path name: string): void | NotFoundError | UnauthorizedError | ForbiddenError;
}

@route("/api/method")
@tag("Questions")
interface QuestionsMethods{
  @route("/lms.lms.doctype.lms_quiz.lms_quiz.check_answer") @post check_answer(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @body body: QuestionAnswer):QuestionAnswerResult | UnauthorizedError | ServerError;
}