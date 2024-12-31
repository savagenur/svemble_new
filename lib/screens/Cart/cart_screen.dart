import 'package:flutter/material.dart';
import 'package:svemble_new/components/bottom_price_button.dart';
import 'package:svemble_new/screens/Cart/components/body.dart';
import 'package:svemble_new/screens/Checkout/checkout_screen.dart';

import '../../core/utils/constants.dart';
import '../../core/utils/size_config.dart';

class CartScreen extends StatelessWidget {
  static const routeName = "/cart";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: BottomPriceButton(
        price: 14300,
        buttonText: "Оплатить",
        onTap: () {
          Navigator.of(context).pushNamed(CheckoutScreen.routeName);
        },
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: kSecondaryColor,
      title: Text(
        "Моя Корзина",
        style: headerTextStyle,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        SizedBox(
          width: getPropScreenWidth(10),
        ),
      ],
    );
  }
}
