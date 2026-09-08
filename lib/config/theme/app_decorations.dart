import 'package:curriculum_vitae/core/design_system/app_radius.dart';
import 'package:flutter/material.dart';

class AppDecorations {
  AppDecorations._(); //didn't create instance

  static BoxDecoration skill(Color color) {
    return BoxDecoration(borderRadius: AppRadius.circle10, color: color);
  }

  static BoxDecoration shadow(Color shadow) {
    return BoxDecoration(boxShadow: [BoxShadow(color: shadow, blurRadius: 20)]);
  }

  static final BoxDecoration chatBubbleReceived = BoxDecoration(
    color: Colors.grey.shade200,
    borderRadius: BorderRadius.circular(16),
  );

  static final BoxDecoration inputField = BoxDecoration(
    color: Colors.grey.shade100,
    borderRadius: BorderRadius.circular(24),
  );
}
