import 'package:curriculum_vitae/config/localization/l10n/app_localizations.dart';
import 'package:curriculum_vitae/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.updateThemeMode,
    required this.updateLanguage,
    required this.isDark,
  });
  final VoidCallback updateThemeMode;
  final VoidCallback updateLanguage;
  final bool isDark;

  @override
  Size get preferredSize => Size.fromHeight(80);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        AppLocalizations.of(context)!.profileTitle,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      titleSpacing: 20,
      actionsPadding: EdgeInsets.only(right: 20),
      backgroundColor: AppColor.darkBlack,
      actions: [
        IconButton(
          onPressed: widget.updateLanguage,
          icon: Icon(Icons.language),
        ),
        IconButton(
          onPressed: widget.updateThemeMode,
          icon: widget.isDark ? Icon(Icons.dark_mode) : Icon(Icons.light_mode),
          splashRadius: 20,
        ),
      ],
    );
  }
}
