import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class EnterOptionTile extends StatelessWidget {
  final String iconSvg;
  final String title;
  final VoidCallback onTap;

  const EnterOptionTile({
    Key? key,
    required this.iconSvg,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: OutlineInputBorder(
          borderSide: const BorderSide(color: kBorderColor),
          borderRadius: BorderRadius.circular(getPropScreenWidth(10))),
      leading: SvgPicture.asset(
        "assets/icons/$iconSvg",
        width: getPropScreenWidth(30),
      ),
      title: Text(
        title,
        style: defaultTextStyle.copyWith(fontWeight: FontWeight.normal),
      ),
      onTap: onTap,
    );
  }
}
