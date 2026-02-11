model URLSubmission {
    doctype:"LMS Assignment Submission";
    assignment: string;
    member: string;
    answer: string;
}

model URLSubmissionDoc {
    doc: URLSubmission;
}

model TextSubmission {
    doctype: "LMS Assignment Submission";
    assignment: string;
    answer: string;
    member: string;

}

model TextSubmissionDoc {
    doc: TextSubmission;
}

model DocumentSubmission {
    doctype: "LMS Assignment Submission";
    assignment: string;
    member: string;
    assignment_attachment: string;
}

model DocumentSubmissionDoc {
    doc: DocumentSubmission;
}

model PDFSubmission {
    doctype: "LMS Assignment Submission";
    assignment: string;
    member: string;
    assignment_attachment: string;
}

model PDFSubmissionDoc {
    doc: PDFSubmission;
}

model ImageSubmission {
    doctype: "LMS Assignment Submission";
    assignment: string;
    member: string;
    assignment_attachment: string;
}

model ImageSubmissionDoc {
    doc: ImageSubmission;
}

model SubmissionResponse {
    answer: null | string;
    assignment: string;
    assignment_attachment: null | string;
    assignment_title: string;
    comments: null;
    course: null;
    creation: utcDateTime;
    docstatus: int16;
    doctype: string;
    evaluator: null;
    idx: int16;
    lesson: null;
    member: string;
    member_name: string;
    modified: utcDateTime;
    modified_by: string;
    name: string;
    owner: string;
    question: string;
    status: string;
    type: string;
}

model SubmissionResponseMessage {
    message: SubmissionResponse;
}