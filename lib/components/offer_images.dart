import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
import '../screens/Home/components/dot.dart';

class OfferImages extends StatefulWidget {
  const OfferImages({
    Key? key,
  }) : super(key: key);

  @override
  State<OfferImages> createState() => _OfferImagesState();
}

class _OfferImagesState extends State<OfferImages> {
  PageController pageController = PageController();
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  List<String> images = [
    "assets/images/girl.png",
    "assets/images/girl2.png",
    "assets/images/girl3.png",
  ];
 
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: getPropScreenWidth(200),
          child: PageView.builder(
            controller: pageController,
            itemCount: 3,
            onPageChanged: (value) {
              setState(() {
                currentIndex = (pageController.page! + .5).toInt();
              });
            },
            itemBuilder: (context, index) {
              return OfferImage(image: images[index]);
            },
          ),
        ),
        Positioned(
          bottom: 10,
          child: Row(
            children: List.generate(
              3,
              (index) => currentIndex == index
                  ? Dot(
                      width: getPropScreenWidth(15),
                      color: kPrimaryColor,
                    )
                  : const Dot(),
            ),
          ),
        )
      ],
    );
  }
}

class OfferImage extends StatelessWidget {
  const OfferImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      child: Container(
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(
            getPropScreenWidth(30),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: getPropScreenWidth(30),
                    horizontal: getPropScreenWidth(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "30%",
                      style: h1TextStyle,
                    ),
                    const Spacer(),
                    Text(
                      "Только сегодня!",
                      style:
                          headerTextStyle.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const Text(
                      "Получи скидку за каждую покупку",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Image.asset(
                image,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
