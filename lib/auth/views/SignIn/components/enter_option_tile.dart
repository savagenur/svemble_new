import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/utils/size_config.dart';

class EnterOptionTile extends StatelessWidget {
  final String iconSvg;
  final String title;
  final VoidCallback onTap;

  const EnterOptionTile({
    super.key,
    required this.iconSvg,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
      shape: OutlineInputBorder(
          borderSide: const BorderSide(color: kBorderColor),
          borderRadius: BorderRadius.circular(getPropScreenWidth(10))),
      leading: SvgPicture.asset(
        "assets/icons/$iconSvg",
        width: getPropScreenWidth(25),
      ),
      title: Text(
        title,
        style: defaultTextStyle.copyWith(fontWeight: FontWeight.normal),
      ),
      onTap: onTap,
    );
  }
}
