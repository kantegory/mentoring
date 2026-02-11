import "../models/quiz.tsp";
import "../models/error.tsp";
import "../models/param.tsp";
import "@typespec/http";

using Http;

namespace LMSService;

@route("/api/resource/LMS%20Quiz")
@tag("Quizes")
interface Quizes {
  @get list(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @query _?: ListQueryParams): QuizList | Error;
  @get @route("/{name}") read(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @path name: string): QuizDetailData | NotFoundError | UnauthorizedError;
  @post create(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @body body: Quiz): QuizDetailData | ValidationError | UnauthorizedError | ServerError;
  @put @route("/{name}") update(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @path name: string, @body body: MergePatchUpdate<Quiz>): QuizDetailData | NotFoundError | ValidationError | UnauthorizedError;
  @delete @route("/{name}") delete(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @path name: string): void | NotFoundError | UnauthorizedError | ForbiddenError;
}

@route("/api/method")
@tag("Quizes")
interface QuizesMethods{
  @route("/lms.lms.doctype.lms_quiz.lms_quiz.quiz_summary") @post quiz_summary(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @body body: QuizSummaryRequest): UnauthorizedError | ServerError;
}