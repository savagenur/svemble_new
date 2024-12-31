import 'package:flutter/material.dart';
import 'package:svemble_new/core/utils/constants.dart';
import 'package:svemble_new/screens/EditProfile/components/body.dart';

import '../../components/default_button.dart';
import '../../core/utils/size_config.dart';

class EditProfileScreen extends StatelessWidget {
  static const routeName = "/edit-profile";
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Редактировать Профиль",
          style: headerTextStyle,
        ),
      ),
      body: const Body(),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(getPropScreenWidth(20)),
          child: DefaultButton(
            text: "Готово",
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
