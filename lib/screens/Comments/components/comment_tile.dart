import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'rating_circle_icon.dart';

class CommentTile extends StatelessWidget {
  const CommentTile({
    Key? key,
  }) : super(key: key);

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
            "Nurbolot Muratbekuulu",
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
                const RatingCircleIcon(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
        ),
        const Text(
          "The item is very good, my son likes it very much and plays every day.",
          style: TextStyle(color: kPrimaryColor),
        ),
        SizedBox(
          height: getPropScreenWidth(10),
        ),
        Row(
          children: [
            const Icon(Icons.favorite),
            const SizedBox(
              width: 5,
            ),
            const Text(
              "729",
              style: TextStyle(color: kPrimaryColor),
            ),
            SizedBox(
              width: getPropScreenWidth(15),
            ),
            const Text("6 days ago")
          ],
        )
      ],
    );
  }
}