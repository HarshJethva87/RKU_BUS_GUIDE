import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rku_bus_guide/src/constants/colors.dart';

class MyTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineSmall: GoogleFonts.poppins(
      color: Color(0xFF303030),
      textStyle: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    bodyLarge: GoogleFonts.poppins(
      color: Color(0xFF707070),
      textStyle: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    headlineMedium: GoogleFonts.poppins(
      color : Color(0xFF303030),
      textStyle: TextStyle(
        fontWeight: FontWeight.bold
      )
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineSmall: GoogleFonts.poppins(
        color: Color(0xFFDDE9EA),
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
        )),
    bodyLarge: GoogleFonts.poppins(
      color: Color(0xFFDBE0E0),
      textStyle: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    headlineMedium: GoogleFonts.poppins(
        color : Color(0xFFDDE9EA),
        textStyle: TextStyle(
            fontWeight: FontWeight.bold
        )
    ),
  );
}
