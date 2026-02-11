import "../models/discussion.tsp";
import "../models/error.tsp";
import "../models/param.tsp";
import "@typespec/http";

using Http;

namespace LMSService;

@route("/api/resource/Discussion%20Topic")
@tag("Discussion Topics")
interface DiscussionTopic {
  @get list(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @query _?: ListQueryParams): DiscussionList | Error;
  @get @route("/{name}") read(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @path name: string): DiscussionDetailData | NotFoundError | UnauthorizedError;
  @post create(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @body body: Discussion): DiscussionDetailData | ValidationError | UnauthorizedError | ServerError;
  @put @route("/{name}") update(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @path name: string, @body body: MergePatchUpdate<Discussion>): DiscussionDetailData | NotFoundError | ValidationError | UnauthorizedError;
  @delete @route("/{name}") delete(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @path name: string): void | NotFoundError | UnauthorizedError | ForbiddenError;
}

@route("/api/method")
@tag("Discussion Topics")
interface DiscussionsMethods{
  @route("/lms.lms.utils.get_discussion_replies") @post list(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @body body: DiscussionRepliesRequest): DiscussionRepliesMessage | UnauthorizedError | ServerError;
}