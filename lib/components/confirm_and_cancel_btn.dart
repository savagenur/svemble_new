import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
import 'default_button.dart';

class ConfirmAndCancelBtn extends StatelessWidget {
  final String confirmTitle;
  final VoidCallback onTap;
  const ConfirmAndCancelBtn({
    Key? key, required this.confirmTitle, required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: DefaultButton(
            text: "Отмена",
            onTap: () {
              Navigator.pop(context);
            },
            backgroundColor: kSecondaryColor,
            textColor: kPrimaryColor,
          ),
        ),
        SizedBox(
          width: getPropScreenWidth(10),
        ),
        Expanded(
          child: DefaultButton(
            text: confirmTitle,
            onTap: onTap,
          ),
        ),
      ],
    );
  }
}
