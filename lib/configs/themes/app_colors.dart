import 'package:study_app/configs/themes/ui_parameters.dart';

import 'app_light_theme.dart';
import 'app_dark_theme.dart';
import 'package:flutter/material.dart';

const Color onSurfaceTextColor = Colors.white;

const mainGradientLight = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    primaryLightColorLight,
    primaryColorLight
  ]
);

const mainGradientDark = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    primaryDarkColorDark,
    primaryColorDark
  ]
);

LinearGradient mainGradient(BuildContext context) => UIParameters.isDarkMode(context) ? mainGradientDark : mainGradientLight;
