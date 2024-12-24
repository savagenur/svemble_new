import 'package:flutter/material.dart';
import 'package:svemble_new/components/small_text_bg.dart';

import '../constants.dart';
import '../size_config.dart';

class AddressTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool isDefault;
  const AddressTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.isDefault = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      leading: CircleAvatar(
        radius: getPropScreenWidth(25),
        backgroundColor: kSecondaryColor,
        child: const CircleAvatar(
          backgroundColor: kPrimaryColor,
          child: Icon(
            Icons.location_on,
            color: Colors.white,
          ),
        ),
      ),
      title: Row(
        children: [
          Flexible(
            child: Text(
              title,
              style: tertiaryBoldTextStyle.copyWith(height: 1.3),
            ),
          ),
          SizedBox(
            width: getPropScreenWidth(5),
          ),
          isDefault ? const SmallTextBg(text: "По умолчанию") : Container(),
        ],
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(top: getPropScreenWidth(10)),
        child: Text(
          subtitle,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      trailing: IconButton(
          onPressed: onTap,
          icon: const Icon(
            Icons.edit,
            color: kPrimaryColor,
          )),
    );
  }
}
