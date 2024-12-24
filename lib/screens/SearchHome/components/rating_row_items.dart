import 'package:flutter/material.dart';
import 'package:svemble_new/data/ratings.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class RatingRowItems extends StatefulWidget {
  const RatingRowItems({
    Key? key,
  }) : super(key: key);

  @override
  State<RatingRowItems> createState() => _RatingRowItemsState();
}

class _RatingRowItemsState extends State<RatingRowItems> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: getPropScreenWidth(20),
          ),
          RatingRowItem(
            isSelected: currentIndex == -1,
            title: "Все",
            onTap: () {
              setState(() {
                currentIndex = -1;
              });
            },
          ),
          ...List.generate(
            allRatingTitles.length,
            (index) {
              return RatingRowItem(
                isSelected: currentIndex == index,
                title: allRatingTitles[index],
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
              );
            },
          )
        ],
      ),
    );
  }
}

class RatingRowItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isSelected;
  const RatingRowItem({
    Key? key,
    required this.title,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getPropScreenWidth(10)),
      child: InkWell(
        borderRadius: BorderRadius.circular(getPropScreenWidth(20)),
        onTap: onTap,
        child: AnimatedContainer(
          duration: defaultDuration,
          padding: EdgeInsets.symmetric(
              vertical: getPropScreenWidth(5),
              horizontal: getPropScreenWidth(15)),
          decoration: BoxDecoration(
              color: isSelected ? kPrimaryColor : null,
              borderRadius: BorderRadius.circular(
                getPropScreenWidth(20),
              ),
              border: Border.all(width: 2)),
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: isSelected ? Colors.white : kPrimaryColor,
              ),
              SizedBox(
                width: getPropScreenWidth(5),
              ),
              Text(
                title,
                style: tertiaryBoldTextStyle.copyWith(
                    color: isSelected ? Colors.white : kPrimaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
