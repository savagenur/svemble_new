// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:svemble_new/product/models/product_model.dart';
import 'package:svemble_new/screens/DetailProduct/detail_product_screen.dart';

import '../core/utils/constants.dart';
import '../core/utils/size_config.dart';
import '../screens/Cart/components/remove_bottom_sheet.dart';
import '../screens/Cart/components/small_remove_and_add_btn.dart';

class CartTile extends StatelessWidget {
  final bool isCheckoutScreen;
  final ProductModel product;
  const CartTile({
    super.key,
    this.isCheckoutScreen = false,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getPropScreenWidth(20)),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, DetailProductScreen.routeName,
            arguments: DetailProductArguments(
              product: product!,
            )),
        child: Container(
          padding: EdgeInsets.all(getPropScreenWidth(20)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(getPropScreenWidth(30)),
            color: Colors.white,
          ),
          child: Row(
            children: [
              product.images!= null ? buildImage(product.images![0]) : SizedBox(),
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
                        Expanded(
                          child: Text(
                            product?.title ?? "",
                            style: tertiaryBoldTextStyle,
                            overflow: TextOverflow.ellipsis,
                          ),
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
                          "Color  |  Size = M",
                          style:
                              quaternaryTextStyle.copyWith(color: kTextColor),
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
                            "\$${product?.price}",
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
      ),
    );
  }

  Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return RemoveProductFromCartBottomSheet(
            product: product!,
          );
        });
  }

  Container buildImage(String imageUrl) {
    return Container(
      padding: EdgeInsets.all(getPropScreenWidth(5)),
      width: getPropScreenWidth(100),
      decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(getPropScreenWidth(20))),
      child: AspectRatio(
        aspectRatio: 1,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          width: 30,
        ),
      ),
    );
  }
}
