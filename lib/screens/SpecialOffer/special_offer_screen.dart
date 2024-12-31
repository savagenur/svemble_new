import 'package:flutter/material.dart';
import 'package:svemble_new/core/utils/constants.dart';
import 'package:svemble_new/screens/SpecialOffer/components/body.dart';
import 'package:svemble_new/core/utils/size_config.dart';

class SpecialOfferScreen extends StatelessWidget {
  static const routeName = "/special-offer";
  const SpecialOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        "Особые Акции",
        style: headerTextStyle,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz_rounded),
        ),
        SizedBox(
          width: getPropScreenWidth(10),
        ),
      ],
    );
  }
}
