import 'package:flutter/material.dart';
import 'package:svemble_new/core/utils/constants.dart';
import 'package:svemble_new/core/utils/size_config.dart';

import '../../../components/offer_images.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            const OfferImages(),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            const OfferImages(),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            const OfferImages(),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            const OfferImages(),
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
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getPropScreenWidth(20))),
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
