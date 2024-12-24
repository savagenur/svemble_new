import 'package:flutter/material.dart';
import 'package:svemble_new/auth/Login/login_screen.dart';
import 'package:svemble_new/components/circle_small_btn.dart';
import 'package:svemble_new/components/text_divider.dart';
import 'package:svemble_new/constants.dart';
import 'package:svemble_new/size_config.dart';

import 'create_email_password_field.dart';
import 'media_icons.dart';

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
              "Создать аккаунт",
              style: h1TextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(30),
            ),
            const CreateEmailPasswordField(),
            SizedBox(
              height: getPropScreenWidth(40),
            ),
            const TextDivider(text: "или продолжить с"),
            SizedBox(
              height: getPropScreenWidth(40),
            ),
            const MediaIcons(),
            SizedBox(
              height: getPropScreenWidth(40),
            ),
            const TextDivider(text: "Уже есть аккаунт?"),
            SizedBox(
              height: getPropScreenWidth(10),
            ),
            CircleSmallBtn(
              text: "Войти через Svemble аккаунт",
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
    );
  }
}
