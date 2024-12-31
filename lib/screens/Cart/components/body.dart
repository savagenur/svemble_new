import 'package:flutter/material.dart';
import 'package:svemble_new/core/utils/size_config.dart';

import '../../../components/cart_tile.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(
              height: getPropScreenWidth(10),
            ),
            ...List.generate(
              10,
              (index) => const CartTile(),
            )
          ],
        ),
      ),
    );
  }
}
