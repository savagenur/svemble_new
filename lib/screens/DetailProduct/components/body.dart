import 'package:flutter/material.dart';
import 'package:svemble_new/components/small_text_bg.dart';
import 'package:svemble_new/screens/Comments/comments_screen.dart';
import 'package:svemble_new/size_config.dart';

import 'carousel_with_indicator_demo.dart';
import 'color_list.dart';
import 'remove_and_add.dart';
import 'size_list.dart';
import 'small_title.dart';
import 'title_and_favorite_btn.dart';

class Body extends StatelessWidget {
  final bool hasSize;
  const Body({super.key, this.hasSize = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const AspectRatio(
                aspectRatio: 1, child: CarouselWithIndicatorDemo()),
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
                        const SmallTextBg(text: "8554 sold"),
                        SizedBox(
                          width: getPropScreenWidth(5),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(
                              context, CommentsScreen.routeName),
                          child: Row(
                            children: [
                              const Icon(Icons.star),
                              SizedBox(
                                width: getPropScreenWidth(5),
                              ),
                              const Text("4.5 (6,388 отзывов)"),
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
                    const SmallTitle(title: "Описание"),
                    SizedBox(
                      height: getPropScreenWidth(10),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data data ",
                        maxLines: 2,
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
                                    const SmallTitle(title: "Размер"),
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
                              const SmallTitle(title: "Цвет"),
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
                        const SmallTitle(title: "Количество"),
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
