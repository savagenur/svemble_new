import 'package:flutter/material.dart';
import 'package:svemble_new/constants.dart';
import 'package:svemble_new/screens/ChooseShipping/components/body.dart';

import '../../components/default_button.dart';
import '../../size_config.dart';

class ChooseShippingScreen extends StatelessWidget {
  static const routeName = "/choose-shipping";
  const ChooseShippingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: Text(
          "Доставка",
          style: headerTextStyle,
        ),
      ),
      body: const Body(),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(getPropScreenWidth(20)),
          child: DefaultButton(
            text: "Применить",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
