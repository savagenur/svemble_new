import 'package:flutter/material.dart';

import '../constants.dart';

class CheckTile extends StatelessWidget {
  final String text;
  final bool value;
  final Function(bool? value)? onChanged;
  const CheckTile({
    Key? key,
    required this.text,
    this.onChanged,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: kPrimaryColor,
          value: value,
          onChanged: onChanged,
        ),
        Text(
          text,
          style: tertiaryTextStyle.copyWith(color: kPrimaryColor),
        )
      ],
    );
  }
}