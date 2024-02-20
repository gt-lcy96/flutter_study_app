import 'package:flutter/material.dart';
import 'package:study_app/controllers/question_paper_controller.dart';
import 'package:study_app/controllers/zoom_drawer_controller.dart';
import 'package:study_app/pages/answer_check/view.dart';

import 'package:study_app/pages/data_uploader/index.dart';

import 'package:get/get.dart';
import 'package:study_app/pages/home/view.dart';
import 'package:study_app/pages/introduction/view.dart';
import 'package:study_app/pages/login/view.dart';
import 'package:study_app/pages/question/view.dart';
import 'package:study_app/pages/result/view.dart';
import 'package:study_app/pages/splash_screen/index.dart';
import 'package:study_app/pages/question/index.dart';
import 'package:study_app/pages/test_overview/view.dart';
import 'package:study_app/routes/custom_transition.dart';
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
      customTransition: CustomScaleTransition(),
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: AppRoutes.INTRODUCTION,
      page: () => const IntroductionPage(),
      customTransition: CustomScaleTransition(),
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      // name: AppRoutes.HOME,
      name: AppRoutes.HOME,
      page: () => const HomePage(),
      binding: BindingsBuilder(() {
        Get.put(QuestionPaperController());
        Get.put(MyZoomDrawerController());
      }),
      customTransition: CustomScaleTransition(),
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => const LoginPage(),
      customTransition: CustomScaleTransition(),
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: AppRoutes.QUESTION,
      page: () => const QuestionPage(),
      binding: QuestionBinding(),
      customTransition: CustomScaleTransition(),
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: AppRoutes.TEST_OVERVIEW,
      page: () => const TestOverviewPage(),
      customTransition: CustomScaleTransition(),
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: AppRoutes.RESULT,
      page: () => const ResultPage(),
      customTransition: CustomScaleTransition(),
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: AppRoutes.ANSWER_CHECK,
      page: () => const AnswerCheckPage(),
      customTransition: CustomScaleTransition(),
      transitionDuration: Duration(milliseconds: 500),
    ),
  ];
}
