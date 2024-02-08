import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:study_app/configs/themes/custom_textStyle.dart';
import 'package:study_app/configs/themes/ui_parameters.dart';
import 'package:study_app/models/question_paper_model.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key, required this.model});
  final QuestionPaperModel model;

  @override
  Widget build(BuildContext context) {
    const double _padding = 10.0;
    return Padding(
      padding: const EdgeInsets.all(_padding),
      child: Stack(
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ColoredBox(
                color: Theme.of(context).primaryColor.withOpacity(0.2),
                child: SizedBox(
                  height: Get.width * 0.15,
                  width: Get.width * 0.15,
                  child: FadeInImage(
                    image: NetworkImage(model.image_url!),
                    placeholder:
                        AssetImage("assets/images/app_splash_logo.png"),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.title!,
                    style: cartTitles(context),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 15),
                    child: Text(model.description!),
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
