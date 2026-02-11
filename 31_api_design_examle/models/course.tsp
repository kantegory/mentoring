model Course {
    doctype: "LMS Course";
    image: string;
    instructors: CourseInstructorShort[];
    title: string;
    short_introduction?: string;
    description?: string;
    video_link?: string;
    course_image: FileUploadResponse;
    tags?: string;
    category?: string;
    published: boolean;
    published_on?: plainDate;
    featured: boolean;
    upcoming: boolean;
    disable_self_learning: boolean;
    enable_certification: boolean;
    paid_course?: boolean;
    paid_certificate?: boolean;
    course_price?: string;
    currency?: string;
    evaluator?: string;
}

model CourseList {
  data: Course[];
}

model CourseListMessage {
  message: CourseDetail[];
}

model CourseMessage {
  message: CourseDetail;
}

model CourseDetail {
    name: string;
    owner: string;
    creation: utcDateTime;
    modified: utcDateTime;
    modifiedBy: string;
    docStatus: int32;
    idx: int32;
    title: string;
    videoLink: string;
    tags: string;
    image: string;
    category: string;
    status: string;
    published: boolean;
    publishedOn: utcDateTime;
    upcoming: boolean;
    featured: boolean;
    disableSelfLearning: boolean;
    shortIntroduction: string;
    description: string;
    paidCourse: boolean;
    enableCertification: boolean;
    paidCertificate: boolean;
    evaluator: string;
    coursePrice: float;
    currency: string;
    amountUsd: float;
    enrollments: int32;
    lessons: int32;
    rating: string;
    doctype: string;
    
    instructors: CourseInstructor[];

    chapters: CourseChapterReference[];

    relatedCourses: string[];
}

model CourseInstructorShort {
    instructor: string;
}

model CourseInstructor {
    name: string;
    owner: string;
    creation: utcDateTime;
    modified: utcDateTime;
    modifiedBy: string;
    docStatus: int32;
    idx: int32;
    instructor: string;
    parent: string;
    parentField: string;
    parentType: string;
    doctype: string;
}

model CourseChapterReference {
    name: string;
    owner: string;
    creation: utcDateTime;
    modified: utcDateTime;
    modifiedBy: string;
    docStatus: int32;
    idx: int32;
    chapter: string;
    parent: string;
    parentField: string;
    parentType: string;
    doctype: string;
}

model CourseDetailData{
  data: Course;
}