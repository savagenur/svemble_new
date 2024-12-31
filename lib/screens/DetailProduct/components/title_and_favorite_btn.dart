import 'package:flutter/material.dart';
import 'package:svemble_new/core/utils/size_config.dart';

import '../../../core/utils/constants.dart';

class TitleAndFavoriteBtn extends StatelessWidget {
  const TitleAndFavoriteBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Mini Leather Bag",
          style: headerTextStyle.copyWith(fontSize: getPropScreenWidth(28)),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            size: getPropScreenWidth(30),
          ),
        ),
      ],
    );
  }
}
