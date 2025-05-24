// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:svemble_new/cart/viewmodel/cart_viewmodel.dart';

import 'package:svemble_new/product/models/product_model.dart';
import 'package:svemble_new/screens/DetailProduct/components/body.dart';

import '../../components/bottom_price_button.dart';

class DetailProductScreen extends ConsumerWidget {
  static const routeName = "/detail-product";
  final ProductModel product;
  const DetailProductScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartNotifier = ref.read(cartViewmodelProvider.notifier);
    return Scaffold(
      body: Body(
        hasSize: true,
        product: product,
      ),
      bottomNavigationBar: BottomPriceButton(
        price: product.price!,
        buttonText: "Add to cart",
        onTap: () {
          cartNotifier.addProductToCart(product: product);
        },
      ),
    );
  }
}

class DetailProductArguments {
  final ProductModel product;

  DetailProductArguments({
    required this.product,
  });
}
