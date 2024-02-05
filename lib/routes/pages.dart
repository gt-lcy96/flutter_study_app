import 'package:flutter/material.dart';

import 'package:study_app/pages/data_uploader/index.dart';

import 'package:get/get.dart';
import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const DataUploaderScreen(),
      binding: DataUploaderBinding(),
    ),
  ];
}
