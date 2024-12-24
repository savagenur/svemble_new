import 'package:flutter/material.dart';
import 'package:svemble_new/components/category_row_items.dart';
import 'package:svemble_new/screens/Home/components/product_tile_list.dart';
import 'package:svemble_new/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            const CategoryRowItems(),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            const ProductTileList(),
            SizedBox(
              height: getPropScreenWidth(50),
            )
          ],
        ),
      ),
    );
  }
}
