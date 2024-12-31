import 'package:flutter/material.dart';
import 'package:svemble_new/auth/views/SignIn/signin_screen.dart';
import 'package:svemble_new/components/default_button.dart';
import 'package:svemble_new/core/utils/size_config.dart';

Future<dynamic> showSignInDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Please sign in first."),
      content: DefaultButton(
        width: SizeConfig.screenWidth / 2,
        text: "Sign in",
        onTap: () {
          Navigator.pop(context); // Close the dialog
          Navigator.pushNamed(context, SignInScreen.routeName);
        },
      ),
    ),
  );
}
