import 'package:checklist_app/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

import '../pages/main/home.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).drawerTheme.backgroundColor,
      child: ListView(
        children: const [
          DrawerItem(
              destination: HomePage(), label: 'home', icon: Icon(Icons.house)),
        ],
      ),
    );
  }
}
