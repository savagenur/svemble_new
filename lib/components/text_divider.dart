import 'package:flutter/material.dart';

import '../size_config.dart';

class TextDivider extends StatelessWidget {
  final String text;
  const TextDivider({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(child: Divider()),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(15)),
            child: Text(
              text,
            )),
        const Flexible(child: Divider())
      ],
    );
  }
}
