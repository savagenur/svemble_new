import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';
import '../../../data/products.dart';
import '../../../core/utils/size_config.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  const CarouselWithIndicatorDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();
  List<String> imageSliders = [
    ...List.generate(
      allProducts.length,
      (index) => allProducts[index].image,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(children: [
            CarouselSlider(
              items: [
                ...List.generate(
                    imageSliders.length,
                    (index) => Container(
                        width: double.infinity,
                        height: double.infinity,
                        padding: EdgeInsets.all(getPropScreenWidth(10)),
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius:
                                BorderRadius.circular(getPropScreenWidth(20))),
                        child: Image.asset(
                          imageSliders[index],
                        )))
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
              children: imageSliders.asMap().entries.map((entry) {
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
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
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
