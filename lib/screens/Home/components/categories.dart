import 'package:flutter/material.dart';
import 'package:svemble_new/screens/Category/category_screen.dart';

import '../../../constants.dart';
import '../../../data/categories.dart';
import '../../../size_config.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: allCategoryTitles.length,
      itemBuilder: (BuildContext context, int index) {
        return CategoryItem(
          title: allCategoryTitles[index],
          iconImg: allIconImgs[index],
          onTap: () {
            Navigator.pushNamed(context, CategoryScreen.routeName);
          },
        );
      },
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final String iconImg;
  final VoidCallback onTap;
  const CategoryItem({
    Key? key,
    required this.title,
    required this.iconImg,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(getPropScreenWidth(30)),
          onTap: onTap,
          child: CircleAvatar(
            radius: getPropScreenWidth(30),
            backgroundColor: kSecondaryColor,
            child: Image.asset(
              iconImg,
              width: getPropScreenWidth(30),
            ),
          ),
        ),
        SizedBox(
          height: getPropScreenWidth(5),
        ),
        Text(
          title,
          style: tertiaryBoldTextStyle,
        ),
      ],
    );
  }
}
