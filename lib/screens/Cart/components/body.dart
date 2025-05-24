import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:svemble_new/cart/viewmodel/cart_viewmodel.dart';
import 'package:svemble_new/core/utils/size_config.dart';

import '../../../components/cart_tile.dart';

class Body extends ConsumerWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartViewmodel = ref.watch(cartViewmodelProvider);
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
              cartViewmodel.productList.length,
              (index) {
                final product = cartViewmodel.productList[index];
                 return CartTile(product: product,);
              },
            )
          ],
        ),
      ),
    );
  }
}
