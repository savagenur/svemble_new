import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({
    Key? key,
    required this.isCompletedScreen,
  }) : super(key: key);

  final bool isCompletedScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getPropScreenWidth(10),
          vertical: getPropScreenWidth(5)),
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(getPropScreenWidth(10)),
        color: kSecondaryColor,
      ),
      child: Text(
        isCompletedScreen ? "Прибыл" : "В пути",
        style: quaternaryTextStyle,
      ),
    );
  }
}