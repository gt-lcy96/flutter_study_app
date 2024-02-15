import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:study_app/configs/themes/custom_textStyle.dart';
import 'package:study_app/configs/themes/ui_parameters.dart';
import 'package:study_app/pages/home/widgets/question_card.dart';
import 'package:study_app/pages/question/index.dart';
import 'package:study_app/widgets/common/background_decoration.dart';
import 'package:study_app/widgets/common/custom_app_bar.dart';
import 'package:study_app/widgets/content_area.dart';
import 'package:study_app/widgets/questions/countdown_timer.dart';

class TestOverviewPage extends GetView<QuestionController> {
  const TestOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          title: controller.completeTest,
        ),
        body: BackgroundDecoration(
          child: Column(children: [
            Expanded(
              child: ContentArea(
                  child: Column(
                children: [
                  Row(
                    children: [
                      CountDownTimer(
                        color: UIParameters.isDarkMode()
                            ? Theme.of(context).textTheme.bodyText1!.color
                            : Theme.of(context).primaryColor,
                        time: '',
                      ),
                      Obx(() => Text(
                            '${controller.time} Remaining',
                            style: countDownTimerTS(),
                          )),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Expanded(
                    child: GridView.builder(
                      itemCount: controller.allQuestion.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: Get.width ~/ 75,
                        childAspectRatio: 1,
                        crossAxisSpacing: 8,
                        mainAxisExtent: 8,
                      ),
                      itemBuilder: (_, index) {
                        return Text('${controller.allQuestion[index].selectedAnswer != null}');
                      }
                    ),
                  ),
                ],
              )),
            ),
          ]),
        ));
  }
}
