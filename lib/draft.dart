import 'package:flutter/material.dart';

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Enter your text',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
      ),
      style: TextStyle(fontSize: 16.0),
    );
  }
}