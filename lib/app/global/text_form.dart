import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm({
    Key? key,
    required this.label,
    required this.controller,
    required this.obscureText,
    this.maxLines,
  }) : super(key: key);
  final String label;
  final TextEditingController controller;
  final bool obscureText;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      obscureText: obscureText,
      controller: controller,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(
              color: Colors.blue,
            ),
          ),
          labelStyle: const TextStyle(color: Colors.white),
          label: Text(label)),
    );
  }
}
