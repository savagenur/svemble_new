import 'package:flutter/material.dart';
import 'package:svemble_new/constants.dart';
import 'package:svemble_new/screens/Profile/components/body.dart';

import '../../size_config.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "/profile";
  const ProfileScreen({super.key,  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body:  Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Text(
        "Мой Профиль",
        style: headerTextStyle,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz),
        ),
        SizedBox(
          width: getPropScreenWidth(10),
        ),
      ],
    );
  }
}
