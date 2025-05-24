import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';

class SmallTitle extends StatelessWidget {
  final String title;
  const SmallTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: primaryTextStyle,
    );
  }
}