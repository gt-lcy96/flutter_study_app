import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:study_app/controllers/question_paper_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionPaperController _questionPaperController = Get.find();
    return Scaffold(
      body: Obx(
        () => ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ClipRect(
              child: SizedBox(
                height: 200.h,
                width: 200.w,
                child: FadeInImage(
                  image: NetworkImage(
                      _questionPaperController.allPaperImages[index]),
                  placeholder: AssetImage("assets/images/app_splash_logo.png"),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            height: 20.h,
          ),
          itemCount: _questionPaperController.allPaperImages.length,
        ),
      ),
    );
  }
}
