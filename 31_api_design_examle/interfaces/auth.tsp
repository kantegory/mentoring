import "../models/auth.tsp";
import "@typespec/http";

using Http;

namespace LMSService;
@route("/api/method")
@tag("Auth")
interface Auth {
    @route("/login") @post login(@header("Content-Type") contentType: "application/x-www-form-urlencoded", @body body: AuthRequestData): AuthResponseData;
    @route("/logout") @get logout(@header("Cookie") cookie: string, @header("X-Frappe-CSRF-Token") token: string, @header("X-Frappe-Site-Name") siteName: string): AuthResponseData;
}
