import 'package:curriculum_vitae/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextThemes {
  AppTextThemes._();

  static final TextTheme en = _enPrimaryTextTheme();

  static final TextTheme fa = _faPrimaryTextTheme();

  static TextTheme _enPrimaryTextTheme() {
    return GoogleFonts.latoTextTheme(
      TextTheme(
        bodySmall: TextStyle(
          color: AppColor.textTheme,
          fontSize: 14,
          height: 1.5,
        ),
      ),
    );
  }

  static TextTheme _faPrimaryTextTheme(   
) {
    return TextTheme(
      bodySmall: TextStyle(
        color: AppColor.textTheme,
        fontSize: 14,
        height: 1.5,
        fontFamily: 'Vazirmatn',
      ),
    );
  }
}
