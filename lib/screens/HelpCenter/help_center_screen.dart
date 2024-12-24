import 'package:flutter/material.dart';
import 'package:svemble_new/constants.dart';
import 'package:svemble_new/screens/HelpCenter/components/body.dart';

class HelpCenterScreen extends StatelessWidget {
  static const routeName = "/help-center";
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: Text(
          "Служба Поддержки",
          style: headerTextStyle,
        ),
      ),
      body: const Body(),
    );
  }
}
