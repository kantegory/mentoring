model Program {
    title: string
}

model ProgramDetail {
    name: string;
    owner?: string;
    creation?: utcDateTime;
    modified?: utcDateTime;
    modified_by?: string;
    docstatus?: int16;
    idx?: int16;
    title?: string;
    doctype?: string;
    program_courses?: ProgramCourseDetail[];
    program_members?: ProgramMemberDetail[];
}

model ProgramDetailData {
    data: ProgramDetail;
}

model ProgramDetailMessage {
    message: ProgramDetail;
}

model ProgramList {
    data: ProgramDetail[];
}

model ProgramCourse {
    course: string;
}

model ProgramCourses {
    program_courses: ProgramCourse[];
}

model ProgramCoursesSet {
    doctype: "LMS Program";
    name: string;
    fieldname: ProgramCourses;
}

model ProgramCourseDetail {
    name: string;
    owner: string;
    creation: utcDateTime;
    modified: utcDateTime;
    modified_by: string;
    docstatus: int16;
    idx: int16;
    course: string;
    course_title: string;
    parent: string;
    parentfield: "program_courses";
    parenttype: "LMS Program";
    doctype: "LMS Program Course";
}

model ProgramMember {
    member: string;
}

model ProgramMembers {
    program_members: ProgramMember[];
}

model ProgramMembersSet {
    doctype: "LMS Program";
    name: string;
    fieldname: ProgramMembers;
}

model ProgramMemberDetail {
    name: string;
    owner: string;
    creation: utcDateTime;
    modified: utcDateTime;
    modified_by: string;
    docstatus: int16;
    idx: int16;
    member: string;
    full_name: string;
    progress: float;
    parent: string;
    parentfield: "program_members";
    parenttype: "LMS Program";
    doctype: "LMS Program Member";
}