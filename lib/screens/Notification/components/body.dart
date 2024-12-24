import 'package:flutter/material.dart';
import 'package:svemble_new/constants.dart';
import 'package:svemble_new/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Text(
              "Сегодня",
              style: primaryTextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Column(
              children: [
                NotificationTile(
                  onTap: () {},
                  title: "30% Особая Скидка!",
                  subtitle: "Только Сегодня!",
                  iconData: Icons.percent,
                ),
              ],
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Text(
              "Вчера",
              style: primaryTextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Column(
              children: [
                NotificationTile(
                  onTap: () {},
                  title: "40% Особая Скидка!",
                  subtitle: "Только Сегодня!",
                  iconData: Icons.location_on,
                ),
                SizedBox(
                  height: getPropScreenWidth(20),
                ),
                NotificationTile(
                  onTap: () {},
                  title: "50% Особая Скидка!",
                  subtitle: "Только Сегодня!",
                  iconData: Icons.wallet,
                ),
              ],
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Text(
              "Декабрь 22, 2022",
              style: primaryTextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Column(
              children: [
                NotificationTile(
                  onTap: () {},
                  title: "40% Особая Скидка!",
                  subtitle: "Только Сегодня!",
                  iconData: Icons.shopping_bag,
                ),
                SizedBox(
                  height: getPropScreenWidth(20),
                ),
                NotificationTile(
                  onTap: () {},
                  title: "50% Особая Скидка!",
                  subtitle: "Только Сегодня!",
                  iconData: Icons.shopping_cart,
                ),
                SizedBox(
                  height: getPropScreenWidth(20),
                ),
                NotificationTile(
                  onTap: () {},
                  title: "45% Особая Скидка!",
                  subtitle: "Только Сегодня!",
                  iconData: Icons.shop,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData iconData;
  final VoidCallback onTap;
  const NotificationTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.iconData,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: Colors.white,
      leading: CircleAvatar(
        backgroundColor: kPrimaryColor,
        radius: getPropScreenWidth(25),
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
      contentPadding: EdgeInsets.all(
        getPropScreenWidth(15),
      ),
      title: Text(
        title,
        style: defaultTextStyle,
      ),
      subtitle: Padding(
          padding: EdgeInsets.only(top: getPropScreenWidth(10)),
          child: Text(subtitle)),
    );
  }
}
