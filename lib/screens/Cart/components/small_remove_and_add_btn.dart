import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SmallRemoveAndAddBtn extends StatelessWidget {
  const SmallRemoveAndAddBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            getPropScreenWidth(20)),
        color: kSecondaryColor,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove,
                size: kTertiaryFontSize),
          ),
          Text(
            "1",
            style: tertiaryBoldTextStyle,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: kTertiaryFontSize,
            ),
          ),
        ],
      ),
    );
  }
}