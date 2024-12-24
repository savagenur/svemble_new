import 'package:flutter/material.dart';
import 'package:svemble_new/screens/DetailProduct/components/body.dart';

import '../../components/bottom_price_button.dart';

class DetailProductScreen extends StatelessWidget {
  static const routeName = "/detail-product";
  const DetailProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Body(
        hasSize: true,
      ),
      bottomNavigationBar: BottomPriceButton(
        price: 4500,
        buttonText: "Добавить в корзину",
        onTap: () {},
      ),
    );
  }
}
