import 'package:curriculum_vitae/config/theme/app_colors.dart';
import 'package:curriculum_vitae/config/theme/app_text_theme.dart';
import 'package:curriculum_vitae/core/design_system/app_radius.dart';
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
    final ColorScheme colorScheme = ColorScheme.light(
      brightness: Brightness.light,
      primary: AppColors.primary,
      secondary: AppColors.secondaryLightTextColor,
      surface: AppColors.primaryDarkTextColor,
      outlineVariant: AppColors.primaryLightTextColor,
    );
    final TextTheme textTheme = languageCode == 'en'
        ? AppTextThemes.en(colorScheme)
        : AppTextThemes.fa(colorScheme);
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: textTheme,

      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.appBarLightColor,
        foregroundColor: AppColors.primaryLightTextColor,
      ),

      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
        border: OutlineInputBorder(
          borderRadius: AppRadius.circle10,
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: AppColors.surfaceLightColor,
        hintStyle: textTheme.bodySmall,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.primary),
          minimumSize: WidgetStatePropertyAll(const Size(double.infinity, 48)),
          foregroundColor: WidgetStatePropertyAll(
            AppColors.primaryDarkTextColor,
          ),
        ),
      ),
    );
  }

  static ThemeData _buildDarkTheme(String languageCode) {
    final ColorScheme colorScheme = ColorScheme.dark(
      brightness: Brightness.dark,
      primary: AppColors.primary,
      secondary: AppColors.secondaryDarkTextColor,
      surface: AppColors.primaryLightTextColor,
      outlineVariant: AppColors.primaryDarkTextColor,
    );
    final TextTheme textTheme = languageCode == 'en'
        ? AppTextThemes.en(colorScheme)
        : AppTextThemes.fa(colorScheme);
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: textTheme,

      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.appBarDarkColor,
        foregroundColor: AppColors.primaryDarkTextColor,
      ),

      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
        border: OutlineInputBorder(
          borderRadius: AppRadius.circle10,
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: AppColors.surfaceDarkColor,
        hintStyle: textTheme.bodySmall,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.primary),
          minimumSize: WidgetStatePropertyAll(const Size(double.infinity, 48)),
          foregroundColor: WidgetStatePropertyAll(
            AppColors.primaryDarkTextColor,
          ),
        ),
      ),
    );
  }
}
