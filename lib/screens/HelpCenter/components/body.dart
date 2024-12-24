import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:svemble_new/constants.dart';
import 'package:svemble_new/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: getPropScreenWidth(20),
          ),
          HelpCenterTile(
            title: "WhatsApp",
            iconData: Icons.whatshot,
            onTap: () {},
          ),
          HelpCenterTile(
            title: "Веб-сайт",
            iconData: Icons.web,
            onTap: () {},
          ),
          HelpCenterTile(
            title: "Facebook",
            iconData: Icons.facebook,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class HelpCenterTile extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback onTap;

  const HelpCenterTile({
    Key? key,
    required this.title,
    required this.iconData,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getPropScreenWidth(20)),
      child: ListTile(
        onTap: onTap,
        tileColor: Colors.white,
        leading: FaIcon(
          iconData,
          size: getPropScreenWidth(30),
          color: kPrimaryColor,
        ),
        title: Text(
          title,
          style: defaultTextStyle.copyWith(fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
