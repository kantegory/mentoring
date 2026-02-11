import "../models/course.tsp";
import "../models/error.tsp";
import "../models/param.tsp";
import "../models/enrollement.tsp";
import "@typespec/http";

using Http;

namespace LMSService;

@route("/api/resource/LMS%20Course")
@tag("Courses")
interface Courses {
  @get list(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @query _?: ListQueryParams): CourseList | Error;
  @get @route("/{name}") read (@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @path name: string): CourseDetailData | NotFoundError | UnauthorizedError;
  @post create(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @body body: Course): CourseDetailData | ValidationError | UnauthorizedError | ServerError;
  @put @route("/{name}") update(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @path name: string, @body body: MergePatchUpdate<Course>): CourseDetailData | NotFoundError | ValidationError | UnauthorizedError;
  @delete @route("/{name}") delete(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @path name: string): void | NotFoundError | UnauthorizedError | ForbiddenError;
}

@route("/api/method")
@tag("Courses")
interface CoursesMethods{
  @route("/lms.lms.utils.get_courses") @post list(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @body body?: CourseBodyParams): CourseListMessage | UnauthorizedError | ServerError;
  @route("/lms.lms.doctype.lms_enrollment.lms_enrollment.create_membership") @post enroll(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @body body: EnrollRequest): EnrollResponse | UnauthorizedError | NotFoundError | ServerError; 

}