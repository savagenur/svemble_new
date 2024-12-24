import 'package:flutter/material.dart';

import '../../../components/product_tile.dart';
import '../../../data/products.dart';
import '../../../size_config.dart';

class ProductTileList extends StatelessWidget {
  const ProductTileList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .52,
        mainAxisSpacing: 20,
        crossAxisSpacing: 15,
      ),
      itemCount: allProducts.length,
      itemBuilder: (BuildContext context, int index) {
        return ProductTile(
          product: allProducts[index],
        );
      },
    );
  }
}
