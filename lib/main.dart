import 'package:curriculum_vitae/config/localization/l10n/app_localizations.dart';
import 'package:curriculum_vitae/config/theme/app_theme.dart';
import 'package:curriculum_vitae/features/app/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _LanguageSelect languageApp = _LanguageSelect.en;
  _ThemeSelect themeApp = _ThemeSelect.light;
  bool get isDark => themeApp == _ThemeSelect.dark;

  Locale get localeApp => languageApp == _LanguageSelect.en
      ? const Locale('en')
      : const Locale('fa');

  ThemeMode get themeMode =>
      themeApp == _ThemeSelect.dark ? ThemeMode.dark : ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light(localeApp.languageCode),
      darkTheme: AppTheme.dark(localeApp.languageCode),
      themeMode: themeMode,
      locale: localeApp,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: MainScreen(
        isDark: isDark,
        updateLanguage: updateLanguage,
        updateThemeMode: updateThemeMode,
      ),
    );
  }

  void updateLanguage() {
    setState(() {
      languageApp = languageApp == _LanguageSelect.en
          ? _LanguageSelect.fa
          : _LanguageSelect.en;
    });
  }

  void updateThemeMode() {
    setState(() {
      themeApp = themeApp == _ThemeSelect.dark
          ? _ThemeSelect.light
          : _ThemeSelect.dark;
    });
  }
}

enum _LanguageSelect { en, fa }

enum _ThemeSelect { light, dark }
