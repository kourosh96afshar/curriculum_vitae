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
    return ThemeData(
      useMaterial3: false,
      brightness: Brightness.light,
      dividerTheme: DividerThemeData(color: AppColor.darkBlack),
      iconTheme: IconThemeData(color: Colors.white, size: 18),
      textTheme: languageCode == 'en' ? AppTextThemes.en : AppTextThemes.fa,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
          // backgroundColor: AppColors.pinkShadow,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          // borderRadius: AppSizes.circle10,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(),
      scaffoldBackgroundColor: AppColor.textTheme,
    );
  }

  static ThemeData _buildDarkTheme(String languageCode) {
    return ThemeData();
  }
}
