import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';
import '../../../core/utils/size_config.dart';

class RatingCircleIcon extends StatelessWidget {
  final double rating;
  const RatingCircleIcon({
    super.key, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getPropScreenWidth(2), horizontal: getPropScreenWidth(8)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getPropScreenWidth(20),
        ),
        border: Border.all(width: 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.star,
            color: kPrimaryColor,
            size: 18,
          ),
          SizedBox(
            width: getPropScreenWidth(2),
          ),
          Text(
            "$rating",
            style: tertiaryBoldTextStyle.copyWith(
              fontSize: kTertiaryFontSize - 1,
            ),
          ),
        ],
      ),
    );
  }
}
