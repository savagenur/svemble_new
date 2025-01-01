// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:svemble_new/product/models/product_model.dart';
import 'package:svemble_new/screens/DetailProduct/components/body.dart';

import '../../components/bottom_price_button.dart';

class DetailProductScreen extends StatelessWidget {
  static const routeName = "/detail-product";
  final ProductModel product;
  const DetailProductScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Body(
        hasSize: true,
        product: product,
      ),
      bottomNavigationBar: BottomPriceButton(
        price: 4500,
        buttonText: "Добавить в корзину",
        onTap: () {},
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