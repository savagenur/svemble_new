import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:svemble_new/auth/viewmodels/auth/auth_state.dart';
import 'package:svemble_new/auth/viewmodels/auth/auth_viewmodel.dart';
import 'package:svemble_new/auth/views/SignIn/signin_screen.dart';
import 'package:svemble_new/core/utils/constants.dart';
import 'package:svemble_new/core/utils/utils.dart';
import 'package:svemble_new/screens/Favorite/favorite_screen.dart';
import 'package:svemble_new/screens/Home/components/body.dart';
import 'package:svemble_new/screens/Notification/notification_screen.dart';
import 'package:svemble_new/core/utils/size_config.dart';

class HomeScreen extends ConsumerWidget {
  static const routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: buildAppBar(context, ref),
      body: const Body(),
    );
  }

  AppBar buildAppBar(BuildContext context, WidgetRef ref) {
    final authViewModel = ref.watch(authViewmodelProvider);
    return AppBar(
      leadingWidth: getPropScreenWidth(70),
      leading: Padding(
        padding: EdgeInsets.only(
            left: getPropScreenWidth(20),
            bottom: getPropScreenWidth(5),
            top: getPropScreenWidth(5)),
        child: GestureDetector(
          onTap: () {
            if (authViewModel.eventState is Authenticated) {
              Navigator.pushNamed(context, SignInScreen.routeName);
            } else {
              showSignInDialog(context);
            }
          },
          child: const CircleAvatar(
            backgroundColor: kSecondaryColor,
            child: Icon(
              Icons.person,
              color: kPrimaryColor,
            ),
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
              "Hi! 👋",
              style: TextStyle(fontSize: kDefFontSize),
            ),
            Text(
              authViewModel.user == null
                  ? "Guest"
                  : authViewModel.user!.username!,
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
