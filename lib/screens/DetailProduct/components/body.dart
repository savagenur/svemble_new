// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:svemble_new/components/small_text_bg.dart';
import 'package:svemble_new/core/utils/size_config.dart';
import 'package:svemble_new/product/models/product_model.dart';
import 'package:svemble_new/screens/Comments/comments_screen.dart';

import 'carousel_with_indicator_demo.dart';
import 'color_list.dart';
import 'remove_and_add.dart';
import 'size_list.dart';
import 'small_title.dart';
import 'title_and_favorite_btn.dart';

class Body extends StatelessWidget {
  final ProductModel product;
  final bool hasSize;
  const Body({
    super.key,
    required this.product,
    required this.hasSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
                aspectRatio: 1,
                child: CarouselWithIndicatorDemo(
                  product: product,
                )),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleAndFavoriteBtn(),
                    SizedBox(
                      height: getPropScreenWidth(10),
                    ),
                    Row(
                      children: [
                        SmallTextBg(text: "${product.stock} sold"),
                        SizedBox(
                          width: getPropScreenWidth(5),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(
                            context,
                            CommentsScreen.routeName,
                            arguments: CommentScreenArguments(product: product),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.star),
                              SizedBox(
                                width: getPropScreenWidth(5),
                              ),
                              Text(
                                  "${product.rating} (${product.reviews?.length} reviews)"),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: getPropScreenWidth(10),
                    ),
                    const Divider(),
                    SizedBox(
                      height: getPropScreenWidth(10),
                    ),
                    const SmallTitle(title: "Description"),
                    SizedBox(
                      height: getPropScreenWidth(10),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "${product.description}",
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: getPropScreenWidth(20),
                    ),
                    Row(
                      children: [
                        hasSize
                            ? Flexible(
                                flex: 6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SmallTitle(title: "Size"),
                                    SizedBox(
                                      height: getPropScreenWidth(10),
                                    ),
                                    const SizeList(),
                                  ],
                                ),
                              )
                            : Container(),
                        SizedBox(
                          width: hasSize ? getPropScreenWidth(30) : 0,
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SmallTitle(title: "Color"),
                              SizedBox(
                                height: getPropScreenWidth(10),
                              ),
                              const ColorList(),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: getPropScreenWidth(20),
                    ),
                    Row(
                      children: [
                        const SmallTitle(title: "Amount"),
                        SizedBox(
                          width: getPropScreenWidth(20),
                        ),
                        const RemoveAndAdd(),
                      ],
                    ),
                    SizedBox(
                      height: getPropScreenWidth(20),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
