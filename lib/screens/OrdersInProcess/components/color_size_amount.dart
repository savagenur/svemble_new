import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';
import '../../../core/utils/size_config.dart';

class ColorSizeAmount extends StatelessWidget {
  const ColorSizeAmount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: getPropScreenWidth(16),
          height: getPropScreenWidth(16),
          decoration: const BoxDecoration(
            color: Colors.brown,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: getPropScreenWidth(10),
        ),
        Expanded(
          child: Text(
            "Цвет  |  Размер = M  |\nКоличество = 1",
          
            style:
                quaternaryTextStyle.copyWith(color: kTextColor,
                height: 1.5
                ),
          ),
        )
      ],
    );
  }
}