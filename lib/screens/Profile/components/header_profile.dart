import 'package:flutter/material.dart';

import '../../../components/profile_avatar_with_btn.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/size_config.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileAvatarWithBtn(
          imageWidget: Image.asset(
            "assets/images/user.png",
          ),
          onTap: () {},
        ),
        SizedBox(
          height: getPropScreenWidth(15),
        ),
        Text(
          "Nurbolot Muratbekuulu",
          style: headerTextStyle,
        ),
        SizedBox(
          height: getPropScreenWidth(10),
        ),
        Text(
          "+996 666 991",
          style: tertiaryTextStyle.copyWith(color: kPrimaryColor),
        ),
        SizedBox(
          height: getPropScreenWidth(15),
        ),
        const Divider(),
      ],
    );
  }
}