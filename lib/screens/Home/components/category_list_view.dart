import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:svemble_new/core/utils/loader.dart';
import 'package:svemble_new/product/viewmodel/product_state.dart';
import 'package:svemble_new/product/viewmodel/product_viewmodel.dart';
import 'package:svemble_new/screens/Category/category_screen.dart';

import '../../../core/utils/constants.dart';
import '../../../data/categories.dart';
import '../../../core/utils/size_config.dart';

class CategoryListView extends HookConsumerWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productViewmodel = ref.watch(productViewmodelProvider);
    final productNotifier = ref.read(productViewmodelProvider.notifier);
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) {
          productNotifier.getCategories();
        },
      );
      return null;
    }, []);
    switch (productViewmodel.categoryListStatus) {
      case CategoryListStatus.success:
        final double height;
        if (MediaQuery.sizeOf(context).width > 600) {
          height = 300;
        } else {
          height = 240;
        }
        return SizedBox(
          height: height,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: productViewmodel.categoryList.length,
            itemBuilder: (BuildContext context, int index) {
              final category = productViewmodel.categoryList[index];
              return CategoryItem(
                title: category.name ?? "",
                iconImg: allIconImgs[0],
                onTap: () {
                  productNotifier
                    ..setCategory(category: category)
                    ..getProductsByCategory(
                      categoryQuery: category.slug!,
                    );
                  Navigator.pushNamed(context, CategoryScreen.routeName);
                },
              );
            },
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

class CategoryItem extends StatelessWidget {
  final String title;
  final String iconImg;
  final VoidCallback onTap;
  const CategoryItem({
    super.key,
    required this.title,
    required this.iconImg,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(getPropScreenWidth(30)),
          onTap: onTap,
          child: CircleAvatar(
            radius: getPropScreenWidth(30),
            backgroundColor: kSecondaryColor,
            child: Icon(Icons.category),
          ),
        ),
        SizedBox(
          height: getPropScreenWidth(5),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: tertiaryBoldTextStyle,
        ),
      ],
    );
  }
}
