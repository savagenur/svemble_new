import 'package:flutter/material.dart';
import 'package:svemble_new/screens/SearchHome/components/rating_row_items.dart';
import 'package:svemble_new/size_config.dart';

import 'comment_tile.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: getPropScreenWidth(10),
          ),
          const RatingRowItems(),
          SizedBox(
            height: getPropScreenWidth(10),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                ...List.generate(
                  10,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getPropScreenWidth(20),
                        vertical: getPropScreenWidth(10)),
                    child: const CommentTile(),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
