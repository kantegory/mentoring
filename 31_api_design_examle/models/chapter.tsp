import "../models/lesson.tsp";

model Chapter {
    title: string;
    course: string;
    is_scorm_package: int16;
    scorm_package?: string;
}

model ChapterDetail {
    name: string;
    owner?: string;
    creation?: utcDateTime;
    modified?: utcDateTime;
    modified_by?: string;
    docstatus?: int16;
    idx?: int16;
    title?: string;
    course?: string;
    course_title?: string;
    is_scorm_package?: int16;
    doctype?: string;
    lessons?: LessonReferenceDetail[];
}

model ChapterDetailData {
    data: ChapterDetail;
}

model ChapterList {
    data: ChapterDetail[]
}

model ChapterReference {
    chapter: string;
    parent: string;
    "parenttype":"LMS Course";
    "parentfield":"chapters";
    "doctype": "Chapter Reference";
}

model ChapterReferenceDoc {
    doc: ChapterReference;
}

model ChapterMessage {
    message: ChapterDetail;
}