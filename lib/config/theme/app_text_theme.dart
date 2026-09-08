import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextThemes {
  AppTextThemes._();

  static TextTheme en(ColorScheme colorScheme) {
    return _enPrimaryTextTheme(colorScheme);
  }

  static TextTheme fa(ColorScheme colorScheme) {
    return _faPrimaryTextTheme(colorScheme);
  }

  static TextTheme _enPrimaryTextTheme(ColorScheme colorScheme) {
    // TextStyle appTextStyle(double fontSize) {
    //   return TextStyle(fontSize: fontSize, color: colorScheme.onSurface);
    // }

    return GoogleFonts.latoTextTheme(
      TextTheme(
        // displaySmall: appTextStyle(36),
        // displayMedium: appTextStyle(45),
        // displayLarge: appTextStyle(57),
        // headlineSmall: appTextStyle(24),
        // headlineMedium: appTextStyle(28),
        // headlineLarge: appTextStyle(32),
        // titleSmall: appTextStyle(14),
        // titleMedium: appTextStyle(16),
        // titleLarge: appTextStyle(22),
        // bodySmall: appTextStyle(12),
        // bodyMedium: appTextStyle(14),
        // bodyLarge: appTextStyle(16),
        // labelSmall: appTextStyle(11),
        // labelMedium: appTextStyle(12),
        // labelLarge: appTextStyle(14),
      ),
    );
  }

  static TextTheme _faPrimaryTextTheme(ColorScheme colorScheme) {
    return TextTheme();
  }
}
