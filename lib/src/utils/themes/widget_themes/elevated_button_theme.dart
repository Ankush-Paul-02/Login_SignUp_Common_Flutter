import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._(); // to avoid creating instances

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        side: const BorderSide(color: tSecondaryColor),
        foregroundColor: tWhiteColor,
        backgroundColor: tSecondaryColor,
        padding: const EdgeInsets.symmetric(vertical: tButtonHeight)),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        side: const BorderSide(color: tSecondaryColor),
        foregroundColor: tSecondaryColor,
        backgroundColor: tWhiteColor,
        padding: const EdgeInsets.symmetric(vertical: tButtonHeight)),
  );
}
