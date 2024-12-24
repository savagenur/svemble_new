import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecentAndClearAll extends StatelessWidget {
  const RecentAndClearAll({
    Key? key,
    required this.searchController,
  }) : super(key: key);

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Недавние",
          style: primaryTextStyle,
        ),
        TextButton(
          onPressed: () {
            searchController.text = '';
          },
          child: Text(
            "Очистить Всё",
            style: tertiaryBoldTextStyle,
          ),
        ),
      ],
    );
  }
}
