import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); // to avoid creating instances

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        side: const BorderSide(color: tSecondaryColor),
        foregroundColor: tSecondaryColor,
        padding: const EdgeInsets.symmetric(vertical: tButtonHeight)),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        // side: const BorderSide(color: tWhiteColor),
        backgroundColor: tDarkColor,
        foregroundColor: tWhiteColor,
        padding: const EdgeInsets.symmetric(vertical: tButtonHeight)),
  );
}
