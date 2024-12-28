import 'package:flutter/material.dart';
import 'package:svemble_new/auth/views/Login/components/login_email_password_field.dart';
import 'package:svemble_new/auth/views/Signup/signup_screen.dart';
import 'package:svemble_new/size_config.dart';

import '../../../../components/circle_small_btn.dart';
import '../../../../components/text_divider.dart';
import '../../../../constants.dart';
import '../../Signup/components/media_icons.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * .05,
            ),
            Text(
              "Login",
              style: h1TextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(30),
            ),
            const LoginEmailPasswordField(),
            SizedBox(
              height: getPropScreenWidth(10),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Forget password?",
                  style: TextStyle(
                    fontSize: kDefFontSize,
                    decoration: TextDecoration.underline,
                  ),
                )),
            SizedBox(
              height: getPropScreenWidth(30),
            ),
            const TextDivider(text: "or continue with "),
            SizedBox(
              height: getPropScreenWidth(40),
            ),
            const MediaIcons(),
            SizedBox(
              height: getPropScreenWidth(40),
            ),
            const TextDivider(text: "No account?"),
            SizedBox(
              height: getPropScreenWidth(10),
            ),
            CircleSmallBtn(
              text: "Create Svemble account",
              onTap: () {
                Navigator.pushReplacementNamed(context, SignUpScreen.routeName);
              },
            ),
            SizedBox(
              height: getPropScreenWidth(30),
            ),
          ],
        ),
      ),
    );
  }
}
