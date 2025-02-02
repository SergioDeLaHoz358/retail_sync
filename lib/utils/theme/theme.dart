import 'package:flutter/material.dart';
import 'package:retail_sync/utils/constants/colors.dart';
import 'package:retail_sync/utils/theme/custom_themes/appbar_theme.dart';
import 'package:retail_sync/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:retail_sync/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:retail_sync/utils/theme/custom_themes/chip_theme.dart';
import 'package:retail_sync/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:retail_sync/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:retail_sync/utils/theme/custom_themes/text_field_theme.dart';
import 'package:retail_sync/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: CColors.buttonPrimary,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppbarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonThemeData.lightElevatedButtonThemeData,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: CColors.dark,
      textTheme: TTextTheme.darkTextTheme,
      chipTheme: TChipTheme.darkChipTheme,
      appBarTheme: TAppbarTheme.darkAppBarTheme,
      checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtonThemeData.darkElevatedButtonThemeData,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme);
}
