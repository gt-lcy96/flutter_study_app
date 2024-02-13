import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:study_app/controllers/auth_controller.dart';
import 'package:study_app/firebase_ref/references.dart';
import 'package:study_app/models/question_paper_model.dart';
import 'package:study_app/services/firebase_storage_service.dart';

class QuestionPaperController extends GetxController {
  final allPaperImages = <String>[].obs;
  final allPapers = <QuestionPaperModel>[].obs;

  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }

  Future<void> getAllPapers() async {
    try {
      QuerySnapshot<Map<String, dynamic>> data = await questionPaperRF.get();

      final paperList = data.docs
          .map((paper) => QuestionPaperModel.fromSnapshot(paper))
          .toList();
      // allPapers.assignAll(paperList);
      // print("paperList:  ${paperList}");
      for (var paper in paperList) {
        final imgUrl = await Get.find<FirebaseStorageService>().getImage(paper.title);
        paper.image_url = imgUrl;
        // print("paper.image_url:  ${paper.image_url}");
      }
      // print("paperList[0].image_url!:  ${paperList[0].image_url!}");

      allPapers.assignAll(paperList);
    } catch (e) {
      print("Error in getAllPapers : ${e}");
    }
  }

  void navigateToQuestions({required QuestionPaperModel paper, bool tryAgain=false}){
    AuthController _authController = Get.find();
    if(_authController.isLoggedIn()) {
      if(tryAgain) {
        Get.back();
        // Get.offNamed();
      } else {
        print("question_paper_controller.navigateToQuestion - Logged in");
        // Get.toNamed();
      }
    } else {
      print("paper.title:  ${paper.title}");
      _authController.showLoginAlertDialogue();
    }
  }
}
