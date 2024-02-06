import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_app/widgets/app_circle_button.dart';
import 'package:get/get.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.2),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.star, size: 65.sp, color: Colors.amber),
            SizedBox(height: 40.h),
            const Text(
                'This is a study app, You can use it as you want. If you understand how it works, you would be able to scale it.'),
            SizedBox(height: 40.h),
            AppCircleButton(
                onTap: () => null,
                child: const Icon(Icons.arrow_forward, size: 35)),
          ]),
        ),
      ),
    );
  }
}