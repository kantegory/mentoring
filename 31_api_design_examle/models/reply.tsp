model Reply {
    doctype:"Discussion Reply";
    reply: string;
    topic: string;
}

model ReplyDetail {
    name: string;
    owner?: string;
    creation?: utcDateTime;
    modified?: utcDateTime;
    modified_by?: string;
    docstatus?: int16; 
    idx?: int16;
    topic?: string;
    reply?: string;
    doctype?: string;
}

model ReplyDetailData {
    data: ReplyDetail;
}

model ReplyList {
    data: ReplyDetail[];
}