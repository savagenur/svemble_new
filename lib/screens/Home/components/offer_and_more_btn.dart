import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OfferAndMoreBtn extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const OfferAndMoreBtn({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: primaryTextStyle,
        ),
        InkWell(
          borderRadius: BorderRadius.circular(getPropScreenWidth(5)),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: getPropScreenWidth(10)),
            child: Row(
              children: const [
                Text(
                  "показать всё",
                  style: TextStyle(fontSize: kTertiaryFontSize, height: 1),
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: kTextColor,
                  size: 10,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
