import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../data/sorts_by.dart';
import '../../../size_config.dart';

class SortByRowItems extends StatefulWidget {
  const SortByRowItems({
    Key? key,
  }) : super(key: key);

  @override
  State<SortByRowItems> createState() => _SortByRowItemsState();
}

class _SortByRowItemsState extends State<SortByRowItems> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: getPropScreenWidth(20),
          ),
          ...List.generate(
            allSortByTitles.length,
            (index) {
              return SortByRowItem(
                isSelected: currentIndex == index,
                title: allSortByTitles[index],
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

class SortByRowItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isSelected;
  const SortByRowItem({
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
        borderRadius: BorderRadius.circular(getPropScreenWidth(10)),
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
