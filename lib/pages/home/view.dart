import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:study_app/configs/themes/ui_parameters.dart';
import 'package:study_app/controllers/question_paper_controller.dart';
import 'package:study_app/pages/home/widgets/question_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionPaperController _questionPaperController = Get.find();
    return Scaffold(
      body: Obx(
        () => ListView.separated(
          padding: UIParameters.mobileScreenPadding,
          itemBuilder: (BuildContext context, int index) {
            // print("_questionPaperController.allPapers[index].image_url!:  ${_questionPaperController.allPapers[index].image_url!}");
            return QuestionCard(model: _questionPaperController.allPapers[index]);
          },
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            height: 20.h,
          ),
          itemCount: _questionPaperController.allPapers.length,
        ),
      ),
    );
  }
}
