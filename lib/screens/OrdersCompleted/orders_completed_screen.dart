import 'package:flutter/material.dart';
import 'package:svemble_new/constants.dart';
import 'package:svemble_new/screens/OrdersCompleted/components/body.dart';

class OrdersCompletedScreen extends StatelessWidget {
  static const routeName = "/orders-completed";
  const OrdersCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kSecondaryColor,
      body: Body(),
    );
  }
}
