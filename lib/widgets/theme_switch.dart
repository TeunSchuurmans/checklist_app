import 'package:flutter/material.dart';
import '../classes/theme_manager.dart';

class ThemeSwitch extends StatefulWidget {
  const ThemeSwitch({super.key});

  @override
  State<ThemeSwitch> createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Text('switch color mode'),
      onTap: () {
        ThemeManager.toggleTheme();
      },
    );
  }
}
