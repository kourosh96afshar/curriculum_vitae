import 'package:curriculum_vitae/config/theme/app_colors.dart';
import 'package:curriculum_vitae/config/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light(String languageCode) {
    return _buildLightTheme(languageCode);
  }

  static ThemeData dark(String languageCode) {
    return _buildDarkTheme(languageCode);
  }

  static ThemeData _buildLightTheme(String languageCode) {
    ColorScheme colorScheme = ColorScheme.light(
      brightness: Brightness.light,
      primary: AppColors.primary,
      secondary: AppColors.secondaryLightTextColor,
      surface: AppColors.primaryDarkTextColor,
      outlineVariant: AppColors.secondaryDarkTextColor,
    );
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: languageCode == 'en'
          ? AppTextThemes.en(colorScheme)
          : AppTextThemes.fa(colorScheme),

      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.appBarLightColor,
        foregroundColor: AppColors.primaryLightTextColor,
      ),

      // inputDecorationTheme: InputDecorationTheme(
      //   labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
      //   border: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(8),
      //       borderSide: BorderSide.none),
      //   filled: true,
      //   fillColor: surfaceColor,
      // ),
      // outlinedButtonTheme: OutlinedButtonThemeData(),
    );
  }

  static ThemeData _buildDarkTheme(String languageCode) {
    return ThemeData(useMaterial3: true, brightness: Brightness.dark);
  }
}
