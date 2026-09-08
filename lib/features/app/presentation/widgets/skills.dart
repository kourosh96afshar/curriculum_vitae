import 'package:curriculum_vitae/config/theme/app_colors.dart';
import 'package:curriculum_vitae/config/theme/app_decorations.dart';
import 'package:curriculum_vitae/core/design_system/app_radius.dart';
import 'package:curriculum_vitae/features/app/presentation/widgets/skills_box.dart';
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color shadow;
  final VoidCallback onTap;
  final bool isSelect;
  final SkillType type;

  const Skills({
    super.key,
    required this.title,
    required this.imagePath,
    required this.shadow,
    required this.onTap,
    required this.isSelect,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadius.circle10,
      child: Container(
        decoration: isSelect
            ? AppDecorations.skill(
                Theme.of(context).colorScheme.brightness == Brightness.dark
                    ? AppColors.surfaceDarkColor
                    : AppColors.surfaceLightColor,
              )
            : null,
        height: 110,
        width: 110,
        child: Column(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: isSelect ? AppDecorations.shadow(shadow) : null,
              child: Image.asset(height: 50, width: 50, imagePath),
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}

enum SkillsType { photoshop, xd, illustrator, afterEffect, lightRoom }
