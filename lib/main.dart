import 'package:checklist_app/classes/theme_manager.dart';
import 'package:checklist_app/pages/main/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeManager.currentTheme(),
    );
  }
}
