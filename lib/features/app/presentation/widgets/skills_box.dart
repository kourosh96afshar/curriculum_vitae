import 'package:curriculum_vitae/config/localization/l10n/app_localizations.dart';
import 'package:curriculum_vitae/config/theme/app_colors.dart';
import 'package:curriculum_vitae/core/assets-address/app_assets.dart';
import 'package:curriculum_vitae/core/design_system/app_spacing.dart';
import 'package:curriculum_vitae/features/app/presentation/widgets/skills.dart';
import 'package:flutter/material.dart';

class SkillsBox extends StatefulWidget {
  const SkillsBox({super.key});

  @override
  State<SkillsBox> createState() => _SkillsBoxState();
}

class _SkillsBoxState extends State<SkillsBox> {
  SkillType skill = SkillType.photoshop;

  void updateSkillSelect(SkillType skillsType) {
    setState(() {
      skill = skillsType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.sym3016,
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.skills),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Skills(
                title: 'photoshop',
                imagePath: AppImagesAsset.ps,
                isSelect: skill == SkillType.photoshop,
                shadow: AppColors.blueShadow,
                onTap: () {
                  updateSkillSelect(SkillType.photoshop);
                },
                type: SkillType.photoshop,
              ),
              Skills(
                title: 'Adobe XD',
                imagePath: AppImagesAsset.xd,
                isSelect: skill == SkillType.xd,
                shadow: AppColors.primary,
                onTap: () {
                  updateSkillSelect(SkillType.xd);
                },
                type: SkillType.xd,
              ),
              Skills(
                title: 'Illustrator',
                imagePath: AppImagesAsset.ai,
                isSelect: skill == SkillType.illustrator,
                shadow: AppColors.orangeShadow,
                onTap: () {
                  updateSkillSelect(SkillType.illustrator);
                },
                type: SkillType.illustrator,
              ),
              Skills(
                title: 'After Effect',
                imagePath: AppImagesAsset.ae,
                isSelect: skill == SkillType.afterEffect,
                shadow: AppColors.purpleShadow,
                onTap: () {
                  updateSkillSelect(SkillType.afterEffect);
                },
                type: SkillType.afterEffect,
              ),
              Skills(
                title: 'Lightroom',
                imagePath: AppImagesAsset.lr,
                isSelect: skill == SkillType.lightRoom,
                shadow: AppColors.blueShadow,
                onTap: () {
                  updateSkillSelect(SkillType.lightRoom);
                },
                type: SkillType.lightRoom,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum SkillType { photoshop, xd, illustrator, afterEffect, lightRoom }
