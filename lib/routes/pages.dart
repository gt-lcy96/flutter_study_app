import 'package:flutter/material.dart';
import 'package:study_app/controllers/question_paper_controller.dart';

import 'package:study_app/pages/data_uploader/index.dart';

import 'package:get/get.dart';
import 'package:study_app/pages/home/view.dart';
import 'package:study_app/pages/introduction/view.dart';
import 'package:study_app/pages/splash_screen/index.dart';
import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const SplashScreenPage(),
      binding: SplashScreenBindings(),
    ),
    GetPage(
      name: AppRoutes.INTRODUCTION,
      page: () => const IntroductionPage(),
    ),
    GetPage(
      // name: AppRoutes.HOME,
      name: AppRoutes.HOME,
      page: () => const HomePage(),
      binding: BindingsBuilder(() {
        Get.put(QuestionPaperController());
      })
    ),
  ];
}
