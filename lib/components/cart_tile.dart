import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../core/utils/constants.dart';
import '../core/utils/size_config.dart';
import '../screens/Cart/components/remove_bottom_sheet.dart';
import '../screens/Cart/components/small_remove_and_add_btn.dart';

class CartTile extends StatelessWidget {
  final bool isCheckoutScreen;
  const CartTile({
    Key? key,
    this.isCheckoutScreen = false,
  }) : super(key: key);

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
                      isCheckoutScreen
                          ? Container()
                          : GestureDetector(
                              onTap: () {
                                buildShowModalBottomSheet(context);
                              },
                              child: const Icon(Icons.delete)),
                    ],
                  ),
                  SizedBox(
                    height: getPropScreenWidth(10),
                  ),
                  Row(
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
                      Text(
                        "Цвет  |  Размер = M",
                        style: quaternaryTextStyle.copyWith(color: kTextColor),
                      )
                    ],
                  ),
                  SizedBox(
                    height: getPropScreenWidth(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: AutoSizeText(
                          "3560 сом",
                          maxFontSize: kTertiaryFontSize,
                          minFontSize: kTertiaryFontSize - 3,
                          maxLines: 1,
                          style: tertiaryBoldTextStyle,
                        ),
                      ),
                      isCheckoutScreen
                          ? Container(
                              width: getPropScreenWidth(30),
                              height: getPropScreenWidth(30),
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                  color: kSecondaryColor,
                                  shape: BoxShape.circle),
                              child: Text(
                                "1",
                                style: tertiaryBoldTextStyle,
                              ),
                            )
                          : const SmallRemoveAndAddBtn(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return const RemoveBottomSheet();
        });
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
