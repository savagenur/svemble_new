import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class ProfileAvatarWithBtn extends StatelessWidget {
  final Widget imageWidget;
  final VoidCallback onTap;
  const ProfileAvatarWithBtn({
    Key? key,
    required this.imageWidget,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: getPropScreenWidth(60),
          backgroundColor: Colors.white,
          child: imageWidget,
        ),
        Positioned(
          right: 0,
          bottom: 2,
          child:  InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(getPropScreenWidth(10)),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(getPropScreenWidth(10)),
                color: kPrimaryColor
              ),
              child: const Icon(
                  Icons.edit,color: Colors.white,
                ),
            ),
          ),
        ),
      ],
    );
  }
}