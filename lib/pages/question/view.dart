import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_app/firebase_ref/loading_status.dart';
import 'package:study_app/pages/question/controller.dart';
import 'package:study_app/widgets/common/background_decoration.dart';
import 'package:study_app/widgets/common/question_place_holder.dart';

class QuestionPage extends GetView<QuestionController> {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundDecoration(
        child: Obx(() => Container(
              height: Get.height,
              width: Get.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (controller.loadingStatus == LoadingStatus.completed)
                      ? Expanded(
                          child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(controller.currentQuestion.value!.question),
                            ],
                          ),
                        ))
                      : Expanded(child: QuestionScreenHolder()),
                ],
              ),
            )),
      ),
    );
  }
}
