import 'package:flutter/material.dart';
import 'package:svemble_new/core/utils/size_config.dart';

import 'invite_friend_tile.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            InviteFriendTile(
              onTap: () {},
              subtitle: "+996 990 666 991",
              title: "Muratbekuulu Nurbolot",
            ),
            InviteFriendTile(
              onTap: () {},
              hasInvited: true,
              title: "Alex Jack",
              subtitle: "+996 990 567 991",
            ),
            InviteFriendTile(
              onTap: () {},
              subtitle: "+996 990 666 991",
              title: "Muratbekuulu Nurbolot",
            ),
            InviteFriendTile(
              onTap: () {},
              hasInvited: true,
              title: "Alex Jack",
              subtitle: "+996 990 567 991",
            ),
            InviteFriendTile(
              onTap: () {},
              subtitle: "+996 990 666 991",
              title: "Muratbekuulu Nurbolot",
            ),
            InviteFriendTile(
              onTap: () {},
              hasInvited: true,
              title: "Alex Jack",
              subtitle: "+996 990 567 991",
            ),
            InviteFriendTile(
              onTap: () {},
              subtitle: "+996 990 666 991",
              title: "Muratbekuulu Nurbolot",
            ),
            InviteFriendTile(
              onTap: () {},
              hasInvited: true,
              title: "Alex Jack",
              subtitle: "+996 990 567 991",
            ),
            InviteFriendTile(
              onTap: () {},
              subtitle: "+996 990 666 991",
              title: "Muratbekuulu Nurbolot",
            ),
            InviteFriendTile(
              onTap: () {},
              hasInvited: true,
              title: "Alex Jack",
              subtitle: "+996 990 567 991",
            ),
            InviteFriendTile(
              onTap: () {},
              subtitle: "+996 990 666 991",
              title: "Muratbekuulu Nurbolot",
            ),
            InviteFriendTile(
              onTap: () {},
              hasInvited: true,
              title: "Alex Jack",
              subtitle: "+996 990 567 991",
            ),
            InviteFriendTile(
              onTap: () {},
              subtitle: "+996 990 666 991",
              title: "Muratbekuulu Nurbolot",
            ),
            InviteFriendTile(
              onTap: () {},
              hasInvited: true,
              title: "Alex Jack",
              subtitle: "+996 990 567 991",
            ),
            SizedBox(
              height: getPropScreenWidth(40),
            )
          ],
        ),
      ),
    );
  }
}
