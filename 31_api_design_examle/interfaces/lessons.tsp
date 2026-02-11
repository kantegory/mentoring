import "../models/chapter.tsp";
import "../models/lesson.tsp";
import "../models/error.tsp";
import "../models/param.tsp";
import "@typespec/http";

using Http;

namespace LMSService;

@route("/api/resource/Course%20Lesson")
@tag("Lessons")
interface Lessons {
  @get list(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @query _?: ListQueryParams): LessonList | Error;
  @get @route("/{name}") read(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @path name: string): LessonDetailData | NotFoundError | UnauthorizedError;
  @post create(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @body body: Lesson): LessonDetailData | ValidationError | UnauthorizedError | ServerError;
  @put @route("/{name}") update(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @path name: string, @body body: MergePatchUpdate<Lesson>): LessonDetailData | NotFoundError | ValidationError | UnauthorizedError;
  @delete @route("/{name}") delete(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @path name: string): void | NotFoundError | UnauthorizedError | ForbiddenError;
}


@route("/api/method")
@tag("Lessons")
interface LessonsMethods{
  @route("/lms.lms.utils.get_discussion_topics") @post list(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @body body: LessonDiscussionTopicsRequest): LessonDiscussionTopicsMessage | UnauthorizedError | ServerError;
}