import 'package:delivery/utils/theme/costom_themes/appbar_theme.dart';
import 'package:delivery/utils/theme/costom_themes/bottom_sheet_theme.dart';
import 'package:delivery/utils/theme/costom_themes/checkbox_theme.dart';
import 'package:delivery/utils/theme/costom_themes/elevated_button_theme.dart';
import 'package:flutter/material.dart';

import 'costom_themes/chip_theme.dart';
import 'costom_themes/outlined_button_theme.dart';
import 'costom_themes/text_filed_theme.dart';
import 'costom_themes/text_theme.dart';


class DAppTheme {
  DAppTheme._(); // To avoid creating instances

  /// Light Theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: DTextTheme.lightTextTheme,
    chipTheme: DChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: DAppBarTheme.lightAppBarTheme,
    checkboxTheme: DCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: DBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: DElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: DOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: DTextFormFieldTheme.lightInputDecorationTheme,
  );

  /// Dark Theme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: DTextTheme.darkTextTheme,
    chipTheme: DChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: DAppBarTheme.darkAppBarTheme,
    checkboxTheme: DCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: DBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: DElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: DOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: DTextFormFieldTheme.darkInputDecorationTheme,
  );
}
