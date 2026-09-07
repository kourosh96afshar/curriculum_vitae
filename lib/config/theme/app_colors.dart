import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  ///theme
  static Color primary = Color(0xFFec407a);

  ///dark-Theme
  static const Color primaryDarkTextColor = Color(0xFFffffff);
  static const Color secondaryDarkTextColor = Color(0xB3ffffff);
  static const Color surfaceDarkColor = Color(0x0Dffffff);
  static const Color backgroundDarkColor = Color(0xFF1e1e1e);
  static const Color appBarDarkColor = Color(0xFF000000);

  ///lighit-Theme
  static Color primaryLightTextColor = Color(0xFF212121);
  static Color secondaryLightTextColor = Color(0xFF212121)
      .withValues(alpha: 0.8);
  static const Color appBarLightColor = Color(0xFFebebeb);
}
