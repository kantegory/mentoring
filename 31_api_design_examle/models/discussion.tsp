import "../models/user.tsp";

model Discussion {
    doctype: "Discussion Topic";
    reference_doctype: "Course Lesson";
    reference_docname: string;
    title: string;
}

model DiscussionDetail {
    name: string;
    owner?: string;
    creation?: utcDateTime;
    modified?: utcDateTime;
    modified_by?: string;
    docstatus?: int16;
    idx?: int16;
    title?: string;
    reference_doctype?: string;
    reference_docname?: string;
    doctype?: string;
}

model DiscussionDetailData {
    data: DiscussionDetail;
}

model DiscussionList {
    data: DiscussionDetail[];
}

// модели для получения связанных с топиком ответов

model DiscussionRepliesRequest {
    topic: string;
}

model DiscussionReplies {
    name: string;
    owner: string;
    creation: utcDateTime;
    modified: utcDateTime;
    reply: string;
    user: UserNameImage
}

model DiscussionRepliesMessage {
    message: DiscussionReplies[];
}