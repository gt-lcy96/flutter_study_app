import 'package:study_app/pages/question/index.dart';

extension QuestionsControllerExtension on QuestionController {
  int get correctQuestionCount => allQuestion
      .where((e) => e.selectedAnswer == e.correctAnswer)
      .toList()
      .length;

  String get correctAnsweredQuestions {
    return '$correctQuestionCount out of ${allQuestion.length} are correct';
  }

  String get points {
    var points = (correctQuestionCount / allQuestion.length) *
        100 *
        (questionPaperModel.time_seconds! - remainSeconds) /
        questionPaperModel.time_seconds! *
        100;
    return points.toStringAsFixed(2);
  }
}
