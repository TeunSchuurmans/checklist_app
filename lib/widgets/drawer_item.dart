import 'package:checklist_app/pages/main/main_page.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatefulWidget {
  final Widget destination;
  final String label;
  final Icon icon;
  const DrawerItem({
    super.key,
    required this.destination,
    required this.label,
    required this.icon,
  });

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.icon,
          Text(
            widget.label,
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
