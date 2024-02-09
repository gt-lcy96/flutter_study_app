import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:study_app/configs/themes/app_colors.dart';
import 'package:study_app/configs/themes/app_icons.dart';
import 'package:study_app/configs/themes/custom_textStyle.dart';
import 'package:study_app/configs/themes/ui_parameters.dart';
import 'package:study_app/controllers/question_paper_controller.dart';
import 'package:study_app/pages/home/widgets/question_card.dart';
import 'package:study_app/widgets/content_area.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionPaperController _questionPaperController = Get.find();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient()),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(mobileScreenPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(AppIcons.menuLeft),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        children: [
                          Icon(AppIcons.peace),
                          Text("Hello friend",
                              style: detailText.copyWith(
                                color: onSurfaceTextColor,
                              ))
                        ],
                      ),
                    ),
                    Text("What do you want to learn today?", style: headerText),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ContentArea(
                    addPadding: false,
                    child: Obx(
                      () => ListView.separated(
                        padding: UIParameters.mobileScreenPadding,
                        itemBuilder: (BuildContext context, int index) {
                          // print("_questionPaperController.allPapers[index].image_url!:  ${_questionPaperController.allPapers[index].image_url!}");
                          return QuestionCard(
                              model: _questionPaperController.allPapers[index]);
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            SizedBox(
                          height: 20.h,
                        ),
                        itemCount: _questionPaperController.allPapers.length,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
