import "../models/user.tsp";

model Lesson {
    course: string;
    chapter: string;
    title: string;
    include_in_preview: boolean;
    body: string;
    instructor_notes: string;
    content: string;
    instructor_content: string;
}

model LessonDetail {
    name: string;
    owner?: string;
    creation?: utcDateTime;
    modified?: utcDateTime;
    modified_by?: string,
    docstatus?: int16;
    idx?: int16;
    title?: string;
    include_in_preview?: int16;
    chapter?: string;
    is_scorm_package?: int16;
    course?: string;
    content?: string;
    body?: string;
    instructor_content?: string;
    instructor_notes?: string;
    file_type?: string,
    doctype?: string;
}

model LessonDetailData {
    data: LessonDetail;
}

model LessonList {
    data: LessonDetail[];
}

model LessonReference {
    lesson: string;
    parent: string;
    "parenttype":"Course Chapter";
    "parentfield":"lessons";
    "doctype": "Lesson Reference";
}

model LessonReferenceDoc {
    doc: LessonReference;
}

model LessonReferenceDetail {
    name: string;
    owner: string;
    creation: utcDateTime;
    modified: utcDateTime;
    modified_by: string,
    docstatus: int16;
    idx: int16;
    lesson: string;
    parent: string;
    "parentfield": "lessons",
    "parenttype": "Course Chapter",
    "doctype": "Lesson Reference"
}

model LessonDetailMessage {
  message: LessonDetail;
}

// модели, описывающие запрос на изменение содержимого урока

model LessonContent {
  doctype: "Course Lesson";
  name: string;
  fieldname: LessonContentField;
}

model LessonContentField {
  title: string;
  include_in_preview: boolean;
  body: string;
  instructor_notes: string;
  content: EditorContent;
  name: string;
  instructor_content: EditorContent;
  youtube?: string | null;
  quiz_id?: string | null;
}

model EditorContent {
  time: int64;
  blocks: Block[];
  version: string;
}

model Block {
  id: string;
  type: BlockType;
  data: BlockData;
}

enum BlockType {
  "assignment",
  "upload",
  "quiz",
  "table",
  "header",
  "paragraph",
  "list",
  "markdown"
}

alias BlockData = AssignmentData | UploadData | QuizData | TableData | HeaderData | ParagraphData | ListData | MarkdownData;

model AssignmentData {
  assignment: string;
}

model UploadData {
  file_url: string;
  file_type: string;
  quizzes: string[];
}

model QuizData {
  quiz: string;
}

model TableData {
  withHeadings: boolean;
  stretched: boolean;
  content: unknown[];
}

model HeaderData {
  text: string;
  level: int32;
}

model ParagraphData {
  text: string;
}

model ListData {
  style: "ordered" | "unordered";
  items: ListItem[];
}

model ListItem {
  content: string;
  items: ListItem[];
}

model MarkdownData {
  text: string;
}

// модели для отправки запроса на получение топиков урока

model LessonDiscussionTopicsRequest {
  doctype: "Course Lesson";
  docname: string;
  single_thread: boolean;
}

model LessonDiscussionTopics {
  name: string;
  title: string;
  owner: string;
  creation: utcDateTime;
  modified: utcDateTime;
  user: UserNameImage
}

model LessonDiscussionTopicsMessage {
  message: LessonDiscussionTopics[];
}