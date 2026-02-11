namespace LMSService;

model EnrollRequest{
    course: string
}

model Enroll{
    name: string,
    owner: string,
    creation: utcDateTime,
    modified: utcDateTime,
    modified_by: string,
    docstatus: int16,
    idx: int16,
    course: string,
    progress: decimal,
    member: string,
    member_name: string,
    member_username: string,
    purchased_certificate: boolean,
    member_type: string,
    role: string,
    doctype: string
}

model EnrollResponse{
    message: Enroll
}