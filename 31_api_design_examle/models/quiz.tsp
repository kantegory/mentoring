import "../models/question.tsp";

model Quiz {
    title: string;
    total_marks: int16;
    passing_percentage: decimal,
    max_attempts: int16;
    duration: decimal;
    limit_questions_to: int16;
    show_answers: boolean;
    show_submission_history: boolean;
    shuffle_questions: boolean;
}

model QuizDetail {
    name: string;
    owner?: string;
    creation?: utcDateTime;
    modified?: utcDateTime;
    modified_by?: string;
    docstatus?: int16;
    idx?: int16;
    title?: string;
    max_attempts?: int16;
    show_answers?: boolean;
    show_submission_history?: boolean;
    total_marks?: int16;
    passing_percentage?: decimal;
    duration?: decimal;
    shuffle_questions?: boolean;
    limit_questions_to?: int16,
    lesson?: string;
    course?: string;
    doctype?: string,
    questions?: QuestionDetail[]
}

model QuizDetailData {
    data: QuizDetail;
}

model QuizList {
    data: QuizDetail[];
}

model QuizDetailMessage {
    message: QuizDetail
}

model QuizSummaryRequest {
    quiz: string;
    @doc("results - json-строка с соответствующей структурой")
    results: QuestionResult[];
}