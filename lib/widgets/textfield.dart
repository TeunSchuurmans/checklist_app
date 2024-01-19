import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String labelText;
  final TextInputType keyboardType;
  final bool toggleVisibility;
  final bool required;
  late TextEditingController controller;
  MyTextField({
    super.key,
    required this.labelText,
    required this.controller,
    this.toggleVisibility = false,
    this.required = false,
    required this.keyboardType,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late bool _obscureText = widget.toggleVisibility;

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
            keyboardType: widget.keyboardType,
            obscureText: _obscureText,
            controller: widget.controller,
            decoration: InputDecoration(
              labelText: widget.labelText,
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
              setState(
                () {
                  _obscureText = !_obscureText;
                },
              );
            },
          )
        ],
      ),
    );
  }
}
