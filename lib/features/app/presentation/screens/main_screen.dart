import 'package:curriculum_vitae/core/component/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final VoidCallback updateThemeMode;
  final VoidCallback updateLanguage;
  final bool isDark;

  const MainScreen({
    super.key,
    required this.updateThemeMode,
    required this.isDark,
    required this.updateLanguage,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        updateLanguage: widget.updateLanguage,
        isDark: widget.isDark,
        updateThemeMode: widget.updateThemeMode,
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // InfoBox(),
            // Divider(),
            // SkillsBox(),
            // Divider(),
            // PersonalInformation(),
          ],
        ),
      ),
    );
  }
}
