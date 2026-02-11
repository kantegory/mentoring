@error
model Error {
  code: int32;
  message: string;
  exception?: string;
  exc_type?: string;
}

model UnauthorizedError extends Error {
  code: 401;
  message: "Unauthorized: Invalid credentials or session expired";
}

model ForbiddenError extends Error {
  code: 403;
  message: "Forbidden: You do not have permission";
}

model NotFoundError extends Error {
  code: 404;
  message: "Not Found: Resource doesn't exist";
}

model ConflictError extends Error {
  code: 409;
  message: "Conflict: Duplicate resource or constraint violation";
}

model ValidationError extends Error {
  code: 422;
  message: "Validation failed for the provided data";
}

model ServerError extends Error {
  code: 500;
  message: "Internal server error occurred";
}