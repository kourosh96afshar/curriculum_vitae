import 'package:curriculum_vitae/config/localization/l10n/app_localizations.dart';
import 'package:curriculum_vitae/core/design_system/app_spacing.dart';
import 'package:flutter/material.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final localize = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: AppSpacing.sym3016,
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(localize.personalInformation, style: textTheme),
          TextField(
            decoration: InputDecoration(
              filled: true,
              hint: Text(localize.email),
              prefixIcon: Icon(Icons.alternate_email),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              hint: Text(localize.password),
              prefixIcon: Icon(Icons.lock),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text(localize.save)),
        ],
      ),
    );
  }
}
