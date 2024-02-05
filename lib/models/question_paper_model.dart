class AnswerModel {
  String identifier;
  String answer;

  AnswerModel({required this.identifier, required this.answer});

  factory AnswerModel.fromJson(Map<String, dynamic> json) {
    return AnswerModel(
      identifier: json["identifier"],
      answer: json["Answer"],
    );
  }
}

class QuestionModel {
  String id;
  String question;
  List<AnswerModel> answers;
  String? correctAnswer;

  QuestionModel({
    required this.id,
    required this.question,
    required this.answers,
    this.correctAnswer,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    return QuestionModel(
      id: json["id"] as String,
      question: json["question"] as String,
      answers: (json["answers"] as List).map((e) => AnswerModel.fromJson(e)).toList(),
      correctAnswer: json["correct_answer"] as String,
    );
  }
}

class QuestionPaperModel {
  String? id;
  String? title;
  String? image_url;
  String? description;
  int? time_seconds;
  List<QuestionModel>? questions;

  QuestionPaperModel({
    this.id,
    this.title,
    this.image_url,
    this.description,
    this.time_seconds,
    this.questions,
  });

  factory QuestionPaperModel.fromJson(Map<String, dynamic> json) {
    return QuestionPaperModel(
      id: json["id"] as String,
      title: json["title"] as String,
      image_url: json["image_url"] as String,
      description: json["Description"] as String,
      time_seconds: json["time_seconds"] as int,
      questions: (json["questions"] as List).map((dynamic e) => QuestionModel.fromJson(e as Map<String, dynamic>)).toList(),
    );
  }
}
