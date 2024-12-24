import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class CircleSmallBtn extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  const CircleSmallBtn({
    Key? key,
    required this.text,
    required this.onTap,
    this.backgroundColor = Colors.transparent,
    this.textColor = kPrimaryColor,
    this.borderColor = kBorderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
          side:  BorderSide(color: borderColor),
          foregroundColor: textColor),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
        child: Text(
          text,
        ),
      ),
    );
  }
}
