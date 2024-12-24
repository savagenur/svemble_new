import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class LoginEmailPasswordField extends StatefulWidget {
  const LoginEmailPasswordField({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginEmailPasswordField> createState() => _LoginEmailPasswordFieldState();
}

class _LoginEmailPasswordFieldState extends State<LoginEmailPasswordField> {
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
            Checkbox(
              activeColor: kPrimaryColor,
              
              value: isRemember,
              onChanged: (value) {
                setState(() {
                  isRemember = value!;
                });
              },
            ),
            const Text(
              "Запомни меня",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        SizedBox(
          height: getPropScreenWidth(20),
        ),
        DefaultButton(
          text: "Вход",
          onTap: () {

          },
        ),
      ],
    );
  }
}
