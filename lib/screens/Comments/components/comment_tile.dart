import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:svemble_new/product/models/product_model.dart';

import '../../../core/utils/constants.dart';
import '../../../core/utils/size_config.dart';
import 'rating_circle_icon.dart';

class CommentTile extends StatelessWidget {
  final Review review;
  const CommentTile({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            child: Image.asset("assets/images/user.png"),
          ),
          title: Text(
            "${review.reviewerName}",
            style: tertiaryBoldTextStyle,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: getPropScreenWidth(50),
                maxWidth: getPropScreenWidth(105)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RatingCircleIcon(
                  rating: review.rating ?? 0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            Text(
              "${review.comment}",
              textAlign: TextAlign.start,
              style: TextStyle(color: kPrimaryColor),
            )
          ],
        ),
        SizedBox(
          height: getPropScreenWidth(10),
        ),
        Row(
          children: [
            // const Icon(Icons.favorite),
            // const SizedBox(
            //   width: 5,
            // ),
            // const Text(
            //   "729",
            //   style: TextStyle(color: kPrimaryColor),
            // ),
            SizedBox(
              width: getPropScreenWidth(15),
            ),
            Text(
                "${DateFormat.yMEd().format(DateTime.parse(review.date!))} days ago")
          ],
        )
      ],
    );
  }
}
