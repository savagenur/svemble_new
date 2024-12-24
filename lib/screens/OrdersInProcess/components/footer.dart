import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'leave_comment_sheet.dart';

class OrderTileFooter extends StatelessWidget {
  const OrderTileFooter({
    Key? key,
    required this.isCompletedScreen,
  }) : super(key: key);

  final bool isCompletedScreen;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: AutoSizeText(
            "3560 сом",
            maxFontSize: kTertiaryFontSize,
            minFontSize: kTertiaryFontSize - 2,
            maxLines: 1,
            style: tertiaryBoldTextStyle,
          ),
        ),
        SizedBox(
          width: getPropScreenWidth(5),
        ),
        isCompletedScreen
            ? TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(getPropScreenWidth(20)),
                  side: const BorderSide(color: kPrimaryColor),
                )),
                onPressed: () {
                  showModalBottomSheet(
                    constraints: BoxConstraints(
                      maxHeight: SizeConfig.screenHeight * .9,
                    ),
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => const LeaveCommentSheet(),
                  );
                },
                child: const Text(
                  "Оставить отзыв",
                  style: TextStyle(
                      color: kPrimaryColor, fontSize: kQuaternaryFontSize),
                ))
            : Container(),
      ],
    );
  }
}
