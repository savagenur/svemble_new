import 'package:flutter/material.dart';
import 'package:svemble_new/product/models/product_model.dart';
import 'package:svemble_new/screens/SearchHome/components/rating_row_items.dart';
import 'package:svemble_new/core/utils/size_config.dart';

import 'comment_tile.dart';

class Body extends StatelessWidget {
  final List<Review> reviews;
  const Body({super.key, required this.reviews});

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
                  reviews.length,
                  (index) {
                    final review = reviews[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getPropScreenWidth(20),
                          vertical: getPropScreenWidth(10)),
                      child: CommentTile(
                        review: review,
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
