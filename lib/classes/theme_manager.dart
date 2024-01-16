import 'package:checklist_app/themes/darkmode.dart';
import 'package:checklist_app/themes/lightmode.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  static bool _darkMode = false;

  static ThemeData currentTheme() {
    if (_darkMode == true) {
      return darkMode;
    } else {
      return lightMode;
    }
  }

  static void toggleTheme() {
    _darkMode = !_darkMode;
  }
}
