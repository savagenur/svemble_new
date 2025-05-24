// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:svemble_new/cart/viewmodel/cart_viewmodel.dart';

import 'package:svemble_new/components/confirm_and_cancel_btn.dart';
import 'package:svemble_new/product/models/product_model.dart';

import '../../../components/cart_tile.dart';
import '../../../components/linear_oval_staff.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/size_config.dart';

class RemoveProductFromCartBottomSheet extends ConsumerWidget {
  final ProductModel product;
  const RemoveProductFromCartBottomSheet({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const LinearOvalStaff(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          Text(
            "Delete product",
            style: headerTextStyle,
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          const Divider(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          CartTile(
            product: product,
            isCheckoutScreen: true,
          ),
          const Divider(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          Flexible(
            child: ConfirmAndCancelBtn(
              confirmTitle: "Yes, Delete",
              onTap: () {
                ref.read(cartViewmodelProvider.notifier).deleteProductFromCart(
                      productId: product.id!,
                    );
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(
            height: getPropScreenWidth(40),
          )
        ],
      ),
    );
  }
}
