import 'package:flutter/material.dart';
import 'package:svemble_new/auth/views/Login/components/body.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/login";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
    );
  }
}
