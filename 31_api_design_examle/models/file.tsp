import "@typespec/http";

using Http;

model FileUploadRequest {
    file: HttpPart<Http.File>;
    is_private: HttpPart<int16>;
    folder: HttpPart<string>;
}

model FileUploadResponse {
    name: string;
    owner: string;
    creation: utcDateTime;
    modified: utcDateTime;
    modified_by: string;
    docstatus: int16;
    idx: int16;
    file_name: string;
    is_private: int16;
    file_type: string;
    is_home_folder: int16;
    is_attachments_folder: int16;
    file_size: int32;
    file_url: string;
    folder: string;
    is_folder: int16;
    content_hash: string;
    uploaded_to_dropbox: int16;
    uploaded_to_google_drive: int16;
    doctype: string;
}

model FileUploadResponseMessage {
    message: FileUploadResponse
}