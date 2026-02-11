enum AssignmentType {
    PDF;
    Image;
    Document;
    Text;
    URL;
}

model Assignment {
    title: string;
    type: AssignmentType;
    question: string;
}

model AssignmentDetail {
    name: string;
    owner?: string;
    creation?: utcDateTime;
    modified?: utcDateTime;
    modified_by?: string;
    docstatus?: int16;
    idx?: int16;
    title?: string;
    question?: string;
    type?: AssignmentType;
    grade_assignment?: int16;
    show_answer?: int16;
    doctype?: string;
}

model AssignmentDetailData {
    data: AssignmentDetail;
}

model AssignmentList {
    data: AssignmentDetail[]
}
