import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:svemble_new/auth/viewmodels/auth/auth_state.dart';
import 'package:svemble_new/auth/viewmodels/auth/auth_viewmodel.dart';
import 'package:svemble_new/auth/views/SignIn/signin_screen.dart';
import 'package:svemble_new/components/default_button.dart';
import 'package:svemble_new/constants.dart';
import 'package:svemble_new/core/utils/utils.dart';
import 'package:svemble_new/screens/Cart/cart_screen.dart';
import 'package:svemble_new/screens/Home/home_screen.dart';
import 'package:svemble_new/screens/Orders/orders_screen.dart';
import 'package:svemble_new/screens/Profile/profile_screen.dart';
import 'package:svemble_new/size_config.dart';

class MainScreen extends ConsumerStatefulWidget {
  static const routeName = "/main";
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  int currentIndex = 0;
  void setCurrentIndex() {
    setState(() {
      currentIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const HomeScreen(),
      const CartScreen(),
      const OrdersScreen(),
      ProfileScreen(),
    ];
    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(
        icon: Icon(
          currentIndex == 0 ? Icons.home : Icons.home_outlined,
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          currentIndex == 1
              ? Icons.shopping_cart
              : Icons.shopping_cart_outlined,
        ),
        label: 'Cart',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          currentIndex == 2 ? Icons.done_all : Icons.done_all_outlined,
        ),
        label: 'Orders',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          currentIndex == 3 ? Icons.person : Icons.person_outline_outlined,
        ),
        label: 'Profile',
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
          final authState = ref.watch(authViewmodelProvider).eventState;

          if (authState is Authenticated) {
            setState(() {
              currentIndex = value;
            });
          } else {
            setState(() {
              currentIndex = 0;
            });

            if (value != 0) {
              signInDialog(context);
            }
          }
        },
        currentIndex: currentIndex,
        items: items,
      ),
    );
  }
}
