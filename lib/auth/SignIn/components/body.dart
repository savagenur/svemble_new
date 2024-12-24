import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:svemble_new/auth/Signup/signup_screen.dart';

import '../../../components/circle_small_btn.dart';
import '../../../components/default_button.dart';
import '../../../components/text_divider.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'enter_option_tile.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(
                height: getPropScreenWidth(20),
              ),
              SvgPicture.asset(
                "assets/icons/login.svg",
                width: SizeConfig.screenWidth * .4,
              ),
              SizedBox(
                height: getPropScreenWidth(20),
              ),
              Text(
                "Вход:",
                style: h1TextStyle,
              ),
              SizedBox(
                height: getPropScreenWidth(30),
              ),
              EnterOptionTile(
                iconSvg: 'icons8-facebook.svg',
                onTap: () {},
                title: "Войти через Facebook",
              ),
              SizedBox(
                height: getPropScreenWidth(15),
              ),
              EnterOptionTile(
                iconSvg: 'icons8-google.svg',
                onTap: () {},
                title: "Войти через Google",
              ),
              SizedBox(
                height: getPropScreenWidth(15),
              ),
              EnterOptionTile(
                iconSvg: 'icons8-apple-logo.svg',
                onTap: () {},
                title: "Войти через Apple",
              ),
              SizedBox(
                height: getPropScreenWidth(30),
              ),
              const TextDivider(
                text: "или",
              ),
              SizedBox(
                height: getPropScreenWidth(30),
              ),
              DefaultButton(
                onTap: () {},
                text: "Войду через Svemble аккаунт",
              ),
              SizedBox(
                height: getPropScreenWidth(30),
              ),
              const TextDivider(text: "Нет профиля в Svemble"),
              SizedBox(
                height: getPropScreenWidth(5),
              ),
              CircleSmallBtn(
                text: "Зарегистрироваться",
                onTap: () =>
                    Navigator.pushNamed(context, SignUpScreen.routeName),
              ),
              SizedBox(
                height: getPropScreenWidth(30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
