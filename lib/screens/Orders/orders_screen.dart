import 'package:flutter/material.dart';
import 'package:svemble_new/constants.dart';
import 'package:svemble_new/screens/OrdersCompleted/orders_completed_screen.dart';
import 'package:svemble_new/screens/OrdersInProcess/orders_in_process_screen.dart';

import '../../size_config.dart';

class OrdersScreen extends StatefulWidget {
  static const routeName = "/orders";
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kSecondaryColor,
        appBar: buildAppBar(context),
        body: const TabBarView(
          children: [
            OrdersInProcessScreen(),
            OrdersCompletedScreen(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: kSecondaryColor,
      title: Text(
        "Мои Заказы",
        style: headerTextStyle,
      ),
      bottom: TabBar(
          indicatorPadding:
              EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          unselectedLabelStyle: tertiaryTextStyle,
          labelStyle: tertiaryBoldTextStyle.copyWith(color: kPrimaryColor),
          tabs: const [
            Tab(
              text: "В процессе",
            ),
            Tab(
              text: "Завершённые",
            ),
          ]),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz_outlined),
        ),
        SizedBox(
          width: getPropScreenWidth(10),
        ),
      ],
    );
  }
}
