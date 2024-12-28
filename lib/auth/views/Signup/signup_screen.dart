import 'package:flutter/material.dart';

import 'package:svemble_new/auth/views/Login/login_screen.dart';
import 'package:svemble_new/auth/views/Signup/components/create_email_password_field.dart';
import 'package:svemble_new/auth/views/Signup/components/media_icons.dart';
import 'package:svemble_new/components/circle_small_btn.dart';
import 'package:svemble_new/components/text_divider.dart';
import 'package:svemble_new/constants.dart';
import 'package:svemble_new/size_config.dart';


class SignUpScreen extends StatelessWidget {
  static const routeName = "/sign-up";
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * .05,
            ),
            Text(
              "Create an account",
              style: h1TextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(30),
            ),
            const CreateEmailPasswordField(),
            SizedBox(
              height: getPropScreenWidth(40),
            ),
            const TextDivider(text: "or continue with"),
            SizedBox(
              height: getPropScreenWidth(40),
            ),
            const MediaIcons(),
            SizedBox(
              height: getPropScreenWidth(40),
            ),
            const TextDivider(text: "Already have an account?"),
            SizedBox(
              height: getPropScreenWidth(10),
            ),
            CircleSmallBtn(
              text: "Login with Svemble account",
              onTap: () {
                Navigator.pushReplacementNamed(context, LoginScreen.routeName);
              },
            ),
            SizedBox(
              height: getPropScreenWidth(30),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
