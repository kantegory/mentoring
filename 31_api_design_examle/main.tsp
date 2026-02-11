import "@typespec/http";
import "./interfaces/auth.tsp";
import "./interfaces/courses.tsp";
import "./interfaces/chapters.tsp";
import "./interfaces/lessons.tsp";
import "./interfaces/methods.tsp";
import "./interfaces/assignments.tsp";
import "./interfaces/quizes.tsp";
import "./interfaces/questions.tsp";
import "./interfaces/discussions.tsp";
import "./interfaces/replies.tsp";
import "./interfaces/programs.tsp";

using Http;

@service(#{title: "LMS"})
@server("/", "")
namespace LMSService;
