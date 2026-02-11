model UserInputQuestion {
    question: string;
    type: "User Input";
    marks: int16;
    option_1: string | null,
    possibility_1: string;
}

model ChoicesQuestion {
    question: string;
    type: "Choices";
    marks: int16;
    option_1: string;
    option_2: string;
    option_3?: string | null;
    option_4?: string | null;
    possibility_1: string;
    possibility_2: string;
    possibility_3?: string;
    possibility_4?: string;
    explanation_1?: string,
    explanation_2?: string;
    explanation_3?: string;
    explanation_4?: string;
    is_correct_1: boolean;
    is_correct_2: boolean;
    is_correct_3?: boolean;
    is_correct_4?: boolean;
}

model OpenEndedQuestion {
    question: string;
    type: "Open Ended";
    marks: int16;
}

enum QuestionType {
    "Choices";
    "Open Ended";
    "User Input";
}

model QuestionDetail {
    name: string;
    owner?: string;
    creation?: utcDateTime;
    modified?: utcDateTime;
    modified_by?: string;
    docstatus?: int16;
    idx?: int16;
    question?: string;
    type?: QuestionType;
    multiple?: int16;
    option_1?: string;
    is_correct_1?: boolean;
    explanation_1?: string;
    option_2?: string;
    is_correct_2?: boolean;
    explanation_2?: string;
    is_correct_3?: boolean;
    explanation_3?: string;
    is_correct_4?: boolean;
    explanation_4?: string;
    possibility_1?: string;
    possibility_3?: string;
    possibility_2?: string;
    possibility_4?: string;
    doctype?: string;
}

model QuestionDetailData {
    data: QuestionDetail
}

model QuestionList {
    data: QuestionDetail[];
}

model QuestionReference {
    parent: string;
    question: string;
    marks: int16;
    "doctype": "LMS Quiz Question";
    "parentfield": "questions";
    "parenttype": "LMS Quiz";
}

model QuestionReferenceDoc {
    doc: QuestionReference;
}

model QuestionAnswer {
    question: string;
    type: QuestionType;
    @doc("answers - строка с json-массивом ответов пользователя на вопрос")
    answers: string;
}

model QuestionResult {
    question_name: string;
    answer: string;
    is_correct: int16[];
}

model QuestionAnswerResult {
    message: int16 | int16[]; 
}