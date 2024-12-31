import 'package:flutter/material.dart';
import 'package:svemble_new/core/utils/constants.dart';

class ErrorScreen extends StatelessWidget {
  static const routeName = "/error";
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "Эта страница пока не существует!",
          style: TextStyle(fontSize: kHeaderFontSize),
        ),
      ),
    );
  }
}
