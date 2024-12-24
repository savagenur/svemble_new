import 'package:flutter/material.dart';
import 'package:svemble_new/screens/AccountSetup/account_setup_screen.dart';

import '../../../components/check_tile.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CreateEmailPasswordField extends StatefulWidget {
  const CreateEmailPasswordField({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateEmailPasswordField> createState() =>
      _CreateEmailPasswordFieldState();
}

class _CreateEmailPasswordFieldState extends State<CreateEmailPasswordField> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  bool isRemember = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          focusNode: focusNode1,
          cursorColor: Colors.black,
          decoration: const InputDecoration(
            prefixIconColor: kPrimaryColor,
            prefixIcon: Icon(
              Icons.mail,
            ),
            hintText: "Адрес эл. почты",
          ),
        ),
        SizedBox(
          height: getPropScreenWidth(20),
        ),
        TextField(
          focusNode: focusNode2,
          cursorColor: Colors.black,
          decoration: InputDecoration(
              prefixIconColor: kPrimaryColor,
              prefixIcon: const Icon(
                Icons.lock,
              ),
              hintText: "Пароль",
              suffixIcon: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.visibility_off))),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckTile(
              text: "Запомни меня",
              value: true,
              onChanged: (value) {},
            )
          ],
        ),
        SizedBox(
          height: getPropScreenWidth(20),
        ),
        DefaultButton(
          text: "Создать",
          onTap: () {
            Navigator.pushNamed(
              context,
              AccountSetupScreen.routeName,
            );
          },
        ),
      ],
    );
  }
}
