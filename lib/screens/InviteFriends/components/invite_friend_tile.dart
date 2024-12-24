import 'package:flutter/material.dart';

import '../../../components/circle_small_btn.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class InviteFriendTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool hasInvited;
  const InviteFriendTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.hasInvited = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      leading: CircleAvatar(
        radius: getPropScreenWidth(25),
      ),
      title: Text(
        title,
        style: tertiaryBoldTextStyle,
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(top: getPropScreenWidth(5)),
        child: Text(
          subtitle,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      trailing: hasInvited
          ? CircleSmallBtn(
              text: "Приглашён",
              borderColor: kPrimaryColor,
              onTap: () {},
            )
          : CircleSmallBtn(
              text: "Пригласить",
              borderColor: kPrimaryColor,
              backgroundColor: kPrimaryColor,
              textColor: Colors.white,
              onTap: onTap,
            ),
    );
  }
}