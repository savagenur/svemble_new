import 'package:flutter/material.dart';
import 'package:svemble_new/constants.dart';
import 'package:svemble_new/screens/InviteFriends/components/body.dart';

class InviteFriendsScreen extends StatelessWidget {
  static const routeName = "/invite-friends";
  const InviteFriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Пригласить Друзей",
          style: headerTextStyle,
        ),
      ),
      body: const Body(),
    );
  }
}
