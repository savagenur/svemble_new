// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../components/leave_account_sheet.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/size_config.dart';

class LeaveAccountTile extends ConsumerWidget {

  const LeaveAccountTile({super.key, 
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      onTap: () {
        showModalBottomSheet(
            context: context,

            builder: (context) {
              return  LeaveAccountSheet();
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
        "Logout",
        style: defaultTextStyle.copyWith(color: Colors.red),
      ),
    );
  }
}
