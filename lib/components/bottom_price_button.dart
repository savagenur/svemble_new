import 'package:flutter/material.dart';

import 'default_button.dart';
import '../core/utils/constants.dart';
import '../core/utils/size_config.dart';

class BottomPriceButton extends StatelessWidget {
  final String buttonText;
  final double price;
  final VoidCallback onTap;
  const BottomPriceButton({
    super.key,
    required this.buttonText,
    required this.onTap,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Total"),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "\$$price",
                  style: headerTextStyle,
                ),
              ],
            ),
            SizedBox(
              width: getPropScreenWidth(30),
            ),
            Expanded(
              child: DefaultButton(
                text: buttonText,
                onTap: onTap,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
