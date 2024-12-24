import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'color_size_amount.dart';
import 'footer.dart';
import 'order_status.dart';

class OrderInProcessTile extends StatelessWidget {
  final bool isCompletedScreen;
  const OrderInProcessTile({super.key, this.isCompletedScreen = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getPropScreenWidth(20)),
      child: Container(
        padding: EdgeInsets.all(getPropScreenWidth(20)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getPropScreenWidth(30)),
          color: Colors.white,
        ),
        child: Row(
          children: [
            buildImage(),
            SizedBox(
              width: getPropScreenWidth(20),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dolce Cardigans",
                        style: tertiaryBoldTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getPropScreenWidth(10),
                  ),
                  const ColorSizeAmount(),
                  SizedBox(
                    height: getPropScreenWidth(10),
                  ),
                  OrderStatus(isCompletedScreen: isCompletedScreen),
                  SizedBox(
                    height: getPropScreenWidth(10),
                  ),
                  OrderTileFooter(isCompletedScreen: isCompletedScreen)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildImage() {
    return Container(
      padding: EdgeInsets.all(getPropScreenWidth(5)),
      width: getPropScreenWidth(100),
      decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(getPropScreenWidth(20))),
      child: AspectRatio(
        aspectRatio: 1,
        child: Image.asset(
          "assets/images/28-jacket-png-image.png",
          width: 30,
        ),
      ),
    );
  }
}
