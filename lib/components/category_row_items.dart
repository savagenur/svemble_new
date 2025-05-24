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
  @override
  Widget build(BuildContext context) {
    final productViewmodel = ref.watch(productViewmodelProvider);
    final productNotifier = ref.read(productViewmodelProvider.notifier);
    switch (productViewmodel.categoryListStatus) {
      case CategoryListStatus.success:
        final category = productViewmodel.category;
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: getPropScreenWidth(20),
              ),
              CategoryRowItem(
                isSelected: category == null,
                title: "All",
                onTap: () {
                  setState(() {
                    if (category != null) {
                      productNotifier
                        ..setCategory(category: null)
                        ..getProducts();
                    }
                  });
                },
              ),
              ...List.generate(
                productViewmodel.categoryList.length,
                (index) {
                  final categoryItem = productViewmodel.categoryList[index];

                  return CategoryRowItem(
                    isSelected: category == categoryItem,
                    title: categoryItem.name ?? "",
                    onTap: () {
                      if (category != categoryItem) {
                        setState(() {
                          productNotifier
                            ..setCategory(category: categoryItem)
                            ..getProductsByCategory(
                                categoryQuery: categoryItem.slug!);
                        });
                      }
                    },
                  );
                },
              )
            ],
          ),
        );
      case CategoryListStatus.loading:
        return Loader();

      case CategoryListStatus.failure:
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
