import 'package:flutter/material.dart';
import 'package:svemble_new/constants.dart';
import 'package:svemble_new/screens/Cart/cart_screen.dart';
import 'package:svemble_new/screens/Home/home_screen.dart';
import 'package:svemble_new/screens/Orders/orders_screen.dart';
import 'package:svemble_new/screens/Profile/profile_screen.dart';

import '../../size_config.dart';

class MainScreen extends StatefulWidget {
  static const routeName = "/main";
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    const HomeScreen(),
    const CartScreen(),
    const OrdersScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // Todo Delete SizeConfig
    SizeConfig().init(context);
    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(
        icon: Icon(
          currentIndex == 0 ? Icons.home : Icons.home_outlined,
        ),
        label: 'Главная',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          currentIndex == 1
              ? Icons.shopping_cart
              : Icons.shopping_cart_outlined,
        ),
        label: 'Корзина',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          currentIndex == 2 ? Icons.done_all : Icons.done_all_outlined,
        ),
        label: 'Заказы',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          currentIndex == 3 ? Icons.person : Icons.person_outline_outlined,
        ),
        label: 'Профиль',
      ),
    ];
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        items: items,
      ),
    );
  }
}
