import 'package:flutter/material.dart';
import 'package:svemble_new/auth/SignIn/components/body.dart';

class SignInScreen extends StatelessWidget {
  static const routeName = "/sign-in";
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
