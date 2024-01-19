import 'package:checklist_app/pages/main/home.dart';
import 'package:checklist_app/widgets/app_bar.dart';
import 'package:flutter/material.dart';

import '../../widgets/drawer.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(),
      body: HomePage(),
    );
  }
}
