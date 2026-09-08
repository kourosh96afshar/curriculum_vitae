import 'package:curriculum_vitae/config/localization/l10n/app_localizations.dart';
import 'package:curriculum_vitae/config/theme/app_colors.dart';
import 'package:curriculum_vitae/core/assets-address/app_assets.dart';
import 'package:curriculum_vitae/core/design_system/app_spacing.dart';
import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final crossStart = CrossAxisAlignment.start;
    final textTheme = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: AppSpacing.sym3016,
      child: Column(
        crossAxisAlignment: crossStart,
        spacing: 20,
        children: [
          Row(
            spacing: 10,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10),
                child: Image.asset(
                  height: 70,
                  width: 70,
                  AppImagesAsset.profileImage,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    Text(
                      localizations.name,
                      style: Theme.of(context).textTheme.bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(localizations.job),
                        Spacer(),
                        Icon(Icons.favorite_border_sharp),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color:
                              Theme.of(context).colorScheme.brightness ==
                                  Brightness.dark
                              ? AppColors.secondaryDarkTextColor
                              : AppColors.secondaryLightTextColor,size: 14,
                        ),
                        Text(localizations.location),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(localizations.summary),
        ],
      ),
    );
  }
}
