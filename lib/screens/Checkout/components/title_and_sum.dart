import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndSum extends StatelessWidget {
  final String title;
  final String sum;
  const TitleAndSum({
    Key? key,
    required this.title,
    required this.sum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(
          sum,
          style: tertiaryBoldTextStyle.copyWith(fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}