import "@typespec/http";
using Http;

model AuthRequestData {
    cmd: "login";
    usr: string;
    pwd: string;
}

model AuthResponseData {
    message: string;
    home_page: string;
    full_name: string;
    dashboard_route: string | null;
}