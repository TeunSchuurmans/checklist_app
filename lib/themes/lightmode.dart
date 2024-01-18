import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightMode = ThemeData(
  colorScheme: const ColorScheme.light(
      background: Color(0xFFFAF9F6),
      secondary: Color(0XFFD4D4D4),
      primary: Color(0XFFDCC4A7),
      primaryContainer: Color(0XFFD5B895),
      onBackground: Color(0XFF252525)),
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.inconsolata(
      color: const Color(0XFF252525),
      fontSize: 30,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: GoogleFonts.inconsolata(
      color: const Color(0XFF252525),
      fontSize: 23,
      fontWeight: FontWeight.w500,
    ),
  ),
);
