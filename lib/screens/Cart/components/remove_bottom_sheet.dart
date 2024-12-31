import 'package:flutter/material.dart';
import 'package:svemble_new/components/confirm_and_cancel_btn.dart';

import '../../../components/linear_oval_staff.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/size_config.dart';
import '../../../components/cart_tile.dart';

class RemoveBottomSheet extends StatelessWidget {
  const RemoveBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            "Удалить из Корзины",
            style: headerTextStyle,
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          const Divider(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          const CartTile(
            isCheckoutScreen: true,
          ),
          const Divider(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          Flexible(
            child: ConfirmAndCancelBtn(
              confirmTitle: "Да, Удалить",
              onTap: () {},
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
