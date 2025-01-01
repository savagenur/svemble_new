import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:svemble_new/core/utils/loader.dart';
import 'package:svemble_new/product/viewmodel/product_state.dart';
import 'package:svemble_new/product/viewmodel/product_viewmodel.dart';

import '../core/utils/constants.dart';
import '../core/utils/size_config.dart';

class CategoryRowItems extends ConsumerStatefulWidget {
  const CategoryRowItems({
    super.key,
  });

  @override
  ConsumerState<CategoryRowItems> createState() => _CategoryRowItemsState();
}

class _CategoryRowItemsState extends ConsumerState<CategoryRowItems> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    final productViewmodel = ref.watch(productViewmodelProvider);
    switch (productViewmodel.categoryListEventState) {
      case CategoryListEventState.success:
     
        return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: getPropScreenWidth(20),
          ),
          CategoryRowItem(
            isSelected: currentIndex == -1,
            title: "All",
            onTap: () {
              setState(() {
                currentIndex = -1;
              });
            },
          ),
          ...List.generate(
            productViewmodel.categoryList.length,
            (index) {
              final category = productViewmodel.categoryList[index];

              return CategoryRowItem(
                isSelected: currentIndex == index,
                title: category.name ?? "",
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
      case CategoryListEventState.loading:
        return Loader();

      case CategoryListEventState.failure:
        return Center(
          child: Text(
            productViewmodel.categoryListErrorMessage ?? "Error",
          ),
        );
      default:
        return Loader();
    }
    
  }
}

class CategoryRowItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isSelected;
  const CategoryRowItem({
    super.key,
    required this.title,
    required this.onTap,
    required this.isSelected,
  });

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
