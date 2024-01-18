import 'package:checklist_app/widgets/checkbox.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child:
            Text('register page', style: Theme.of(context).textTheme.bodySmall),
      ),
    );
  }
}
