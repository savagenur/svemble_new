import 'package:flutter/material.dart';

import '../../../constants.dart';

class SmallTitle extends StatelessWidget {
  final String title;
  const SmallTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: primaryTextStyle,
    );
  }
}