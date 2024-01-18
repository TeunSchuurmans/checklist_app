import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String content;
  final Function function;
  const MyButton({
    super.key,
    required this.content,
    required this.function,
  });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.primary,
          border: Border.all(
            width: 3,
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
        child: Center(
          child: Text(
            widget.content,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
      onTap: () {
        widget.function();
      },
    );
  }
}
