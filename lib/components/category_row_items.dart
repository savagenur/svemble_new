import 'package:flutter/material.dart';

import '../constants.dart';
import '../data/categories.dart';
import '../size_config.dart';

class CategoryRowItems extends StatefulWidget {
  const CategoryRowItems({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryRowItems> createState() => _CategoryRowItemsState();
}

class _CategoryRowItemsState extends State<CategoryRowItems> {
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
          CategoryRowItem(
            isSelected: currentIndex == -1,
            title: "Все",
            onTap: () {
              setState(() {
                currentIndex = -1;
              });
            },
          ),
          ...List.generate(
            allCategoryTitles.length,
            (index) {
              return CategoryRowItem(
                isSelected: currentIndex == index,
                title: allCategoryTitles[index],
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

class CategoryRowItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isSelected;
  const CategoryRowItem({
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
              vertical: getPropScreenWidth(8),
              horizontal: getPropScreenWidth(15)),
          decoration: BoxDecoration(
              color: isSelected ? kPrimaryColor : null,
              borderRadius: BorderRadius.circular(
                getPropScreenWidth(20),
              ),
              border: Border.all(width: 2)),
          child: Text(
            title,
            style: tertiaryBoldTextStyle.copyWith(
                color: isSelected ? Colors.white : kPrimaryColor),
          ),
        ),
      ),
    );
  }
}
