import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class SmallTextBg extends StatelessWidget {
  const SmallTextBg({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(
          getPropScreenWidth(5),
        ),
      ),
      child: Text(
        text,
        style: quaternaryTextStyle,
      ),
    );
  }
}