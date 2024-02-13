import 'package:get/get.dart';
import 'package:study_app/models/question_paper_model.dart';

class QuestionController extends GetxController {
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    final _questionPaper = Get.arguments as QuestionPaperModel;
    print("_questionPaper.title:  ${_questionPaper.title}");
  }
}