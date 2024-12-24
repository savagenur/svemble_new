import 'package:flutter/material.dart';
import 'package:svemble_new/auth/Signup/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = "/sign-up";
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
    );
  }
}
