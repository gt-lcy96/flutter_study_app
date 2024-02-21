import 'package:get/get.dart';
import 'package:study_app/configs/themes/ui_parameters.dart';
import 'package:study_app/controllers/theme_controller.dart';

import 'app_light_theme.dart';
import 'app_dark_theme.dart';
import 'package:flutter/material.dart';

const Color onSurfaceTextColor = Colors.white;
const Color correctAnswerColor = Color(0xFF3ac3cb);
const Color wrongAnswerColor = Color(0xFFf85187);
const Color notAnsweredColor = Color(0xFF2a3c65);

const mainGradientLight = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [primaryLightColorLight, primaryColorLight]);

const mainGradientDark = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [primaryDarkColorDark, primaryColorDark]);


LinearGradient mainGradient() => Get.find<ThemeController>().isDarkMode
    ? mainGradientLight
    : mainGradientDark;

Color customScaffoldColor(BuildContext context) =>
    Get.find<ThemeController>().isDarkMode
        ? const Color.fromARGB(255, 240, 237, 255)
        : const Color(0xFF2e3c62);

// ? const Color.fromARGB(255, 20, 46, 158)
// : const Color.fromARGB(255, 221, 221, 221);

Color answerSelectedColor() => Get.find<ThemeController>().isDarkMode
    ? Theme.of(Get.context!).cardColor.withOpacity(0.5)
    : Theme.of(Get.context!).primaryColor;

Color answerBorderColor() => Get.find<ThemeController>().isDarkMode
    ? const Color.fromARGB(255, 20, 46, 158)
    : const Color.fromARGB(255, 221, 221, 221);
