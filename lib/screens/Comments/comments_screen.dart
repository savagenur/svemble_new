import 'package:flutter/material.dart';
import 'package:svemble_new/core/utils/constants.dart';
import 'package:svemble_new/screens/Comments/components/body.dart';
import 'package:svemble_new/core/utils/size_config.dart';

class CommentsScreen extends StatelessWidget {
  static const routeName = "/comments";
  const CommentsScreen({super.key});

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
        "4.5 (6,388 отзывов)",
        style: headerTextStyle,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        SizedBox(
          width: getPropScreenWidth(10),
        ),
      ],
    );
  }
}
