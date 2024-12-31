import 'package:flutter/material.dart';
import 'package:svemble_new/core/utils/constants.dart';
import 'package:svemble_new/screens/AccountSetup/components/body.dart';

class AccountSetupScreen extends StatelessWidget {
  static const routeName = "/account-setup";
  const AccountSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ваш Профиль",
          style: headerTextStyle,
        ),
      ),
      body: const Body(),
    );
  }
}
