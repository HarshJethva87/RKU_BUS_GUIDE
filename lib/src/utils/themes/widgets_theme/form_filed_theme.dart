import 'package:flutter/material.dart';
import 'package:rku_bus_guide/src/constants/colors.dart';
import 'package:rku_bus_guide/src/constants/strings.dart';

class MyTextFormFiledTheme {
  static InputDecorationTheme lightTextFormFilednTheme = const InputDecorationTheme(
    prefixIconColor: MySecondryColor,
    floatingLabelStyle: TextStyle(color: MySecondryColor),
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: MySecondryColor),
    ),
  );

//Dark
  static InputDecorationTheme darkTextFormFilednTheme = const InputDecorationTheme(
    prefixIconColor: MySecondryColor,
    floatingLabelStyle: TextStyle(color: MySecondryColor),
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: MySecondryColor),
    ),
  );
}
