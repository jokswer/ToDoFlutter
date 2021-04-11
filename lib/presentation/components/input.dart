import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  bool obscureText = false;
  int maxLines;
  

  Input(
      {Key key,
      this.labelText,
      this.keyboardType,
      this.obscureText,
      this.controller,
      this.maxLines = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal[200], width: 1.0),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal, width: 1.0),
          ),
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.teal)),
      keyboardType: keyboardType,
      maxLines: maxLines,
    );
  }
}
