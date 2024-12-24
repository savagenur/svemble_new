import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class MediaIcons extends StatelessWidget {
  const MediaIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MediaIconContainer(
          iconSvg: "assets/icons/icons8-facebook.svg",
          onTap: () {},
        ),
        MediaIconContainer(
          iconSvg: "assets/icons/icons8-google.svg",
          onTap: () {},
        ),
        MediaIconContainer(
          iconSvg: "assets/icons/icons8-apple-logo.svg",
          onTap: () {},
        ),
      ],
    );
  }
}

class MediaIconContainer extends StatelessWidget {
  final String iconSvg;
  final VoidCallback onTap;

  const MediaIconContainer({
    Key? key,
    required this.iconSvg,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(getPropScreenWidth(10)),
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: getPropScreenWidth(10),
            horizontal: getPropScreenWidth(30)),
        decoration: BoxDecoration(
          border: Border.all(color: kBorderColor),
          borderRadius: BorderRadius.circular(
            getPropScreenWidth(10),
          ),
        ),
        child: SvgPicture.asset(
          iconSvg,
          width: getPropScreenWidth(30),
        ),
      ),
    );
  }
}
