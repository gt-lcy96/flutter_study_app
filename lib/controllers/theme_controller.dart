import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_app/configs/themes/app_dark_theme.dart';
import 'package:study_app/configs/themes/app_light_theme.dart';

class ThemeController extends GetxController {
  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;
  late ThemeData _darkTheme;
  late ThemeData _lightTheme;

  ThemeData get darkTheme => _darkTheme;
  ThemeData get lightTheme => _lightTheme;

  @override
  void onInit() {
    initializeThemeData();
    super.onInit();
  }

  initializeThemeData() {
    _darkTheme = DarkTheme().buildDarkTheme();
    _lightTheme = LightTheme().buildLightTheme();
  }

  toggleDarkmode() {
    _isDarkMode = !_isDarkMode; // Toggle the theme mode
    Get.changeTheme(_isDarkMode ? _lightTheme : _darkTheme);
    update();
  }
}