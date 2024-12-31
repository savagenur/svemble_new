import 'package:flutter/material.dart';
import 'package:svemble_new/components/confirm_and_cancel_btn.dart';
import 'package:svemble_new/screens/OrdersInProcess/components/order_tile.dart';

import '../../../components/linear_oval_staff.dart';
import '../../../core/utils/constants.dart';
import '../../../core/utils/size_config.dart';

class LeaveCommentSheet extends StatelessWidget {
  const LeaveCommentSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(getPropScreenWidth(40)),
      child: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.only(
            right: getPropScreenWidth(20),
            left: getPropScreenWidth(20),
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const LinearOvalStaff(),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            Text(
              "Оставить отзыв",
              style: headerTextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            const Divider(),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            const OrderInProcessTile(isCompletedScreen: false),
            const Divider(),
            SizedBox(
              height: getPropScreenWidth(15),
            ),

            Text(
              "Довольны ли вы продуктом?",
              style: headerTextStyle,
            ),

            SizedBox(
              height: getPropScreenWidth(15),
            ),

            const Text(
              "Пожалуйста оцените товар и оставьте отзыв...",
            ),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            SizedBox(
              width: SizeConfig.screenWidth * .7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ...List.generate(
                    5,
                    (index) => Icon(
                      Icons.star,
                      size: getPropScreenWidth(32),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Введите текст...",
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.image_rounded))),
            ),

            SizedBox(
              height: getPropScreenWidth(15),
            ),
            const Divider(),
            SizedBox(
              height: getPropScreenWidth(15),
            ),

            // Button Row

            Flexible(
              child: ConfirmAndCancelBtn(
                confirmTitle: "Подтвердить",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(40),
            )
          ],
        ),
      ),
    );
  }
}
