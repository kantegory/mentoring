import "../models/chapter.tsp";
import "../models/program.tsp";
import "../models/lesson.tsp";
import "../models/error.tsp";
import "../models/param.tsp";
import "../models/file.tsp";
import "../models/submission.tsp";
import "@typespec/http";

using Http;

namespace LMSService;
@route("/api/method")
@tag("Methods")
interface Methods{
  @route("/frappe.client.insert") @post insert_doc(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @body body: LessonReferenceDoc | ChapterReferenceDoc | QuestionReferenceDoc | PDFSubmissionDoc | ImageSubmissionDoc | URLSubmissionDoc | DocumentSubmissionDoc | TextSubmissionDoc): ChapterMessage | QuizDetailMessage | SubmissionResponseMessage | UnauthorizedError | ServerError;

  @route("/frappe.client.set_value") @post set_value(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @body body: LessonContent | ProgramCoursesSet | ProgramMembersSet): LessonDetailMessage | ProgramDetailMessage | UnauthorizedError | ServerError;
  
  @route("/upload_file") @post upload_file(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string, @header("content-type") contentType: "multipart/form-data", @multipartBody body: FileUploadRequest): FileUploadResponseMessage | UnauthorizedError | ServerError;
}