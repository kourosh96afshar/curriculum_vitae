import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  ///theme
  static const Color primary = Color(0xFFec407a);
  static const Color blueShadow = Color(0xFF2196f3);
  static const Color orangeShadow = Color(0xFFffe0b2);
  static const Color purpleShadow = Color(0xFF1565c0);

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
  static const Color surfaceLightColor = Color(0x0D000000);
  static const Color appBarLightColor = Color(0xFFebebeb);
}
