import 'package:flutter/material.dart';
import 'package:rku_bus_guide/src/constants/colors.dart';

class MyOutlineBtnTheme {

  static OutlinedButtonThemeData lightOutlineBtnTheme = OutlinedButtonThemeData(
      style : OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: MyBlackColor,
        side: BorderSide(color: MyBlackColor),
        padding: EdgeInsets.symmetric(vertical: 15.0),)
  );



  //Dark
  static OutlinedButtonThemeData darkOutlineBtnTheme = OutlinedButtonThemeData(
     style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: MywhiteColor,
      side: BorderSide(color: MywhiteColor),
      padding: EdgeInsets.symmetric(vertical: 15.0),
    ),
  );
}


