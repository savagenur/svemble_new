// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:svemble_new/auth/viewmodels/auth/auth_viewmodel.dart';
import 'package:svemble_new/components/confirm_and_cancel_btn.dart';
import 'package:svemble_new/screens/Main/main_screen.dart';

import '../../../components/linear_oval_staff.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class LeaveAccountSheet extends ConsumerWidget {
  const LeaveAccountSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const LinearOvalStaff(),
        SizedBox(
          height: getPropScreenWidth(15),
        ),
        Text(
          "Logout",
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
          "Are you sure you want to logout?",
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
              confirmTitle: "Yes, Logout",
              onTap: () {
                ref.read(authViewmodelProvider.notifier).signOut();

                Navigator.pushNamedAndRemoveUntil(
                  context,
                  MainScreen.routeName,
                  (route) => false,
                );
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
