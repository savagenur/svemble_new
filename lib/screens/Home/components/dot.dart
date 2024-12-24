import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Dot extends StatelessWidget {
  final double width;
  final Color color;
  const Dot({
    Key? key,
    this.width = 5,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: getPropScreenWidth(5),
      ),
      child: AnimatedContainer(
        duration: defaultDuration,
        width: getPropScreenWidth(width),
        height: getPropScreenWidth(5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(getPropScreenWidth(10)),
          shape: BoxShape.rectangle,
        ),
      ),
    );
  }
}
