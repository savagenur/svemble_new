import 'package:flutter/material.dart';

import '../../../components/leave_account_sheet.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class LeaveAccountTile extends StatelessWidget {
  const LeaveAccountTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showModalBottomSheet(
            context: context,

            builder: (context) {
              return const LeaveAccountSheet();
            });
      },
      minLeadingWidth: 0,
      contentPadding:
          EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      leading: const Icon(
        Icons.logout_outlined,
        color: Colors.red,
      ),
      title: Text(
        "Выйти из Аккаунта",
        style: defaultTextStyle.copyWith(color: Colors.red),
      ),
    );
  }
}