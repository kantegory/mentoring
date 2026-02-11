import "@typespec/http";

using Http;

namespace LMSService;

model ListQueryParams {
  @query
  @doc("JSON-массив полей, которые нужно получить. Пример: [\"name\", \"title\"]")
  fields?: string;

  @query
  @doc("JSON-массив фильтров в формате: [[\"field\", \"=\", \"value\"]]. Пример: [[\"status\", \"=\", \"Published\"]]")
  filters?: string;

  @query
  @doc("Поле и направление сортировки. Пример: title desc")
  order_by?: string;

  @query
  limit_start?: int32;

  @query
  limit_page_length?: int32;
}

model CourseBodyParams {
  doctype: "LMS Course";
  filters?: CourseStatusEnum;
  start?: int16;
  limit?: int16;
  limit_start?: int16;
  limit_page_length?: int16;
}

model CourseStatusEnum {
  enrolled: int16;
  published: int16;
  upcoming: int16;
  live: int16
}