import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:svemble_new/auth/viewmodels/auth/auth_viewmodel.dart';
import 'package:svemble_new/auth/views/Login/login_screen.dart';
import 'package:svemble_new/auth/views/SignIn/components/enter_option_tile.dart';
import 'package:svemble_new/auth/views/Signup/signup_screen.dart';
import 'package:svemble_new/core/utils/app_dialog.dart';

import '../../../../components/circle_small_btn.dart';
import '../../../../components/default_button.dart';
import '../../../../components/text_divider.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/size_config.dart';

class SignInScreen extends HookConsumerWidget {
  static const routeName = "/sign-in";
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
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
                  "Sign in:",
                  style: h1TextStyle,
                ),
                SizedBox(
                  height: getPropScreenWidth(30),
                ),
                EnterOptionTile(
                  iconSvg: 'icons8-facebook.svg',
                  onTap: () {
                    AppDialog.showInfo("The function is under development");
                  },
                  title: "Sign in with Facebook",
                ),
                SizedBox(
                  height: getPropScreenWidth(10),
                ),
                EnterOptionTile(
                  iconSvg: 'icons8-google.svg',
                  onTap: () {
                    AppDialog.showInfo("The function is under development");
                  },
                  title: "Sign in with Google",
                ),
                SizedBox(
                  height: getPropScreenWidth(10),
                ),
                EnterOptionTile(
                  iconSvg: 'icons8-apple-logo.svg',
                  onTap: () {
                    AppDialog.showInfo("The function is under development");
                  },
                  title: "Sign in with Apple",
                ),
                SizedBox(
                  height: getPropScreenWidth(30),
                ),
                const TextDivider(
                  text: "or",
                ),
                SizedBox(
                  height: getPropScreenWidth(30),
                ),
                DefaultButton(
                  onTap: () => Navigator.pushNamed(
                    context,
                    LoginScreen.routeName,
                  ),
                  text: "Login with Svemble account",
                ),
                SizedBox(
                  height: getPropScreenWidth(30),
                ),
                const TextDivider(text: "Don't have Svemble account?"),
                SizedBox(
                  height: getPropScreenWidth(5),
                ),
                CircleSmallBtn(
                  text: "Sign up",
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
      ),
    );
  }
}
