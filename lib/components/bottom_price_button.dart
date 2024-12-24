import 'package:flutter/material.dart';

import 'default_button.dart';
import '../constants.dart';
import '../size_config.dart';

class BottomPriceButton extends StatelessWidget {
  final String buttonText;
  final int price;
  final VoidCallback onTap;
  const BottomPriceButton({
    Key? key,
    required this.buttonText,
    required this.onTap, required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
    
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Сумма"),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "$price сом",
                  style: 
                  headerTextStyle,
                ),
              ],
            ),
            SizedBox(
              width: getPropScreenWidth(30),
            ),
            Expanded(child: DefaultButton(text: buttonText, onTap: onTap))
          ],
        ),
      ),
    );
  }
}