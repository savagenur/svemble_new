import 'package:flutter/material.dart';
import 'package:svemble_new/constants.dart';
import 'package:svemble_new/screens/Checkout/components/body.dart';
import 'package:svemble_new/size_config.dart';

import '../../components/default_button.dart';

class CheckoutScreen extends StatelessWidget {
  static const routeName = "/checkout";
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(getPropScreenWidth(20)),
          child: DefaultButton(
            text: "Продолжить Оплату",
            onTap: () {},
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kSecondaryColor,
      title: Text(
        "Оплата",
        style: headerTextStyle,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz),
        ),
        SizedBox(
          width: getPropScreenWidth(10),
        ),
      ],
    );
  }
}
