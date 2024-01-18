import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final bool toggleVisibility;
  late TextEditingController controller;
  MyTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.toggleVisibility = false,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.toggleVisibility;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          TextField(
            obscureText: _obscureText,
            controller: widget.controller,
            decoration: InputDecoration(
              hintText: widget.hintText,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  width: 2,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                    width: 3,
                    color: Theme.of(context).colorScheme.primaryContainer),
              ),
            ),
            style: Theme.of(context).textTheme.bodySmall,
          ),
          IconButton(
            icon: widget.toggleVisibility
                ? Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Theme.of(context).colorScheme.onBackground,
                  )
                : const Icon(null),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          )
        ],
      ),
    );
  }
}
