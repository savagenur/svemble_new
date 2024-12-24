import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:svemble_new/constants.dart';

import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double width;
  final Color backgroundColor;
  final Color textColor;

  const DefaultButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.width = double.infinity,
    this.backgroundColor = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: getPropScreenWidth(15)),
          child: AutoSizeText(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: kPrimaryFontSize,
              fontWeight: FontWeight.bold,
            ),
            minFontSize: 30,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
