import 'package:flutter/material.dart';
import 'package:rku_bus_guide/src/constants/colors.dart';

class MyElevatedBtnTheme {

  static ElevatedButtonThemeData lightElevatedBtnTheme = ElevatedButtonThemeData(
    style:ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: MywhiteColor,
        backgroundColor: MyPrimaryColor,
        side: BorderSide(color: MyPrimaryColor),
        padding: EdgeInsets.symmetric(vertical: 15.0))
  );

  //Dark
static ElevatedButtonThemeData darkElevatedBtnTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: MywhiteColor,
      backgroundColor: MyPrimaryColor,
      side: BorderSide(color: MyPrimaryColor),
      padding: EdgeInsets.symmetric(vertical: 15.0))
);
}