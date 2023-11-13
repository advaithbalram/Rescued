import 'package:rescue2/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Outline button style
  static ButtonStyle get outlineBlack => ElevatedButton.styleFrom(
        backgroundColor: appTheme.black90001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.h),
        ),
        shadowColor: appTheme.black900.withOpacity(0.2),
        elevation: 2,
      );
  static ButtonStyle get outlineBlackTL24 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.secondaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.h),
        ),
        shadowColor: appTheme.black900.withOpacity(0.2),
        elevation: 2,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
