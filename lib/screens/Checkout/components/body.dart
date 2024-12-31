import 'package:flutter/material.dart';
import 'package:svemble_new/components/cart_tile.dart';
import 'package:svemble_new/core/utils/constants.dart';
import 'package:svemble_new/screens/ChooseShipping/choose_shipping_screen.dart';
import 'package:svemble_new/screens/ShippingAddress/shipping_address_screen.dart';
import 'package:svemble_new/core/utils/size_config.dart';

import '../../../components/address_tile.dart';
import 'result_sum_container.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getPropScreenWidth(10),
            ),
            const Divider(),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Text(
              "Адрес доставки",
              style: primaryTextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            AddressTile(
              title: "Дом",
              subtitle: "district Lenin, Ala-Archa N337",
              onTap: () {
                Navigator.pushNamed(context, ShippingAddressScreen.routeName);
              },
            ),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            const Divider(),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            Text(
              "Список заказа",
              style: primaryTextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            Column(
              children: [
                ...List.generate(
                  4,
                  (index) => const CartTile(
                    isCheckoutScreen: true,
                  ),
                )
              ],
            ),
            const Divider(),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            Text(
              "Доставка",
              style: primaryTextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(
                Icons.delivery_dining,
                size: getPropScreenWidth(30),
                color: kPrimaryColor,
              ),
              title: Text(
                "С доставкой",
                style: tertiaryBoldTextStyle,
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, ChooseShippingScreen.routeName);
                },
                icon: const Icon(
                  Icons.keyboard_double_arrow_right,
                  color: kPrimaryColor,
                ),
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            const Divider(),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            const ResultSumContainer(),
            SizedBox(
              height: getPropScreenWidth(20),
            )
          ],
        ),
      ),
    );
  }
}
