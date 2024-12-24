import 'package:flutter/material.dart';
import 'package:svemble_new/components/confirm_and_cancel_btn.dart';

import '../../../components/linear_oval_staff.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class LeaveAccountSheet extends StatelessWidget {
  const LeaveAccountSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const LinearOvalStaff(),
        SizedBox(
          height: getPropScreenWidth(15),
        ),
        Text(
          "Выйти из Аккаунта",
          style: headerTextStyle.copyWith(color: Colors.red),
        ),
        SizedBox(
          height: getPropScreenWidth(15),
        ),
        const Divider(),

        SizedBox(
          height: getPropScreenWidth(15),
        ),
        Text(
          "Вы уверены, что хотите Выйти?",
          textAlign: TextAlign.center,
          style: defaultTextStyle,
        ),

        SizedBox(
          height: getPropScreenWidth(20),
        ),

        // Button Row

        Flexible(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
            child: ConfirmAndCancelBtn(
              confirmTitle: "Да, Выйти",
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        SizedBox(
          height: getPropScreenWidth(40),
        )
      ],
    );
  }
}
