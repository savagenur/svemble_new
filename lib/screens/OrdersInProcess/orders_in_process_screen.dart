import 'package:flutter/material.dart';
import 'package:svemble_new/core/utils/constants.dart';
import 'package:svemble_new/screens/OrdersInProcess/components/body.dart';

class OrdersInProcessScreen extends StatelessWidget {
  static const routeName = "/orders-in-process";
  const OrdersInProcessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kSecondaryColor,
      body: Body(),
    );
  }
}
