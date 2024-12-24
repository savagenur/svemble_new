import 'package:flutter/material.dart';
import 'package:svemble_new/constants.dart';
import 'package:svemble_new/screens/Favorite/favorite_screen.dart';
import 'package:svemble_new/screens/Home/components/body.dart';
import 'package:svemble_new/screens/Notification/notification_screen.dart';
import 'package:svemble_new/size_config.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leadingWidth: getPropScreenWidth(70),
      leading: Padding(
        padding: EdgeInsets.only(
            left: getPropScreenWidth(20),
            bottom: getPropScreenWidth(5),
            top: getPropScreenWidth(5)),
        child: const CircleAvatar(
          backgroundColor: kSecondaryColor,
          child: Icon(
            Icons.person,
            color: kPrimaryColor,
          ),
        ),
      ),
      centerTitle: false,
      title: Padding(
        padding: EdgeInsets.symmetric(vertical: getPropScreenWidth(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Привет! 👋",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Нурболот",
              style: primaryTextStyle,
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, NotificationScreen.routeName);
          },
          icon: const Icon(Icons.notifications_none),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, FavoriteScreen.routeName);
          },
          icon: const Icon(Icons.favorite_border),
        ),
        SizedBox(
          width: getPropScreenWidth(10),
        ),
      ],
    );
  }
}
