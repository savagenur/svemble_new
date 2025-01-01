// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:svemble_new/product/models/product_model.dart';

import '../../../core/utils/constants.dart';
import '../../../core/utils/size_config.dart';
import '../../../data/products.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  final ProductModel product;
  const CarouselWithIndicatorDemo({
    super.key,
    required this.product,
  });

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final images = widget.product.images;
    return SafeArea(
      child: Stack(
        children: [
          Column(children: [
            CarouselSlider(
              items: [
                ...List.generate(images != null ? images.length : 0, (index) {
                  final imageUrl = images![index];
                  return Container(
                      width: double.infinity,
                      height: double.infinity,
                      padding: EdgeInsets.all(getPropScreenWidth(10)),
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius:
                              BorderRadius.circular(getPropScreenWidth(20))),
                      child: CachedNetworkImage(imageUrl: imageUrl));
                })
              ],
              carouselController: _controller,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 1.45,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images != null
                  ? images.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: AnimatedContainer(
                          duration: defaultDuration,
                          width: _current == entry.key ? 24 : 8.0,
                          height: 8.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(getPropScreenWidth(12)),
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList()
                  : [],
            ),
            const Divider(),
          ]),
          Positioned(
            left: getPropScreenWidth(20),
            top: getPropScreenWidth(20),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios)),
          )
        ],
      ),
    );
  }
}
