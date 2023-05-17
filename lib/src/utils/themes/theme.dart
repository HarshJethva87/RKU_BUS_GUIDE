import 'package:flutter/material.dart';
import 'package:rku_bus_guide/src/utils/themes/widgets_theme/elevated_btn_theme.dart';
import 'package:rku_bus_guide/src/utils/themes/widgets_theme/form_filed_theme.dart';
import 'package:rku_bus_guide/src/utils/themes/widgets_theme/outline_btn_theme.dart';
import 'package:rku_bus_guide/src/utils/themes/widgets_theme/text_theme.dart';

class MyAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: MyTextTheme.lightTextTheme,
    outlinedButtonTheme: MyOutlineBtnTheme.lightOutlineBtnTheme,
    elevatedButtonTheme: MyElevatedBtnTheme.lightElevatedBtnTheme,
    inputDecorationTheme: MyTextFormFiledTheme.lightTextFormFilednTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: MyTextTheme.darkTextTheme,
    outlinedButtonTheme: MyOutlineBtnTheme.darkOutlineBtnTheme,
    elevatedButtonTheme: MyElevatedBtnTheme.darkElevatedBtnTheme,
    inputDecorationTheme: MyTextFormFiledTheme.darkTextFormFilednTheme,
  );
}
