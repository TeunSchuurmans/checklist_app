import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkMode = ThemeData(
  colorScheme: const ColorScheme.dark(
      background: Color(0XFF252525),
      secondary: Color(0XFF3D3D3D),
      primary: Color(0XFFDCC4A7),
      primaryContainer: Color(0XFFD5B895),
      onBackground: Color(0xFFFAF9F6)),
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.inconsolata(
      color: const Color(0XFFFAF9F6),
      fontSize: 30,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: GoogleFonts.inconsolata(
      color: const Color(0XFFFAF9F6),
      fontSize: 23,
      fontWeight: FontWeight.w500,
    ),
  ),
  iconTheme: const IconThemeData(
    color: Color(0xFFFAF9F6),
    size: 35,
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Color(0XFF3D3D3D),
  ),
  appBarTheme: const AppBarTheme(shadowColor: Colors.transparent),
);
