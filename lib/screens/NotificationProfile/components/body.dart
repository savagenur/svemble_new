import 'package:flutter/material.dart';
import 'package:svemble_new/data/notification_items.dart';
import 'package:svemble_new/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(
                height: getPropScreenWidth(15),
              ),
              ...List.generate(
                allNotificationItems.length,
                (index) {
                  var notification = allNotificationItems[index];
                  return NotificationTile(
                    title: notification["title"],
                    value: notification["value"],
                    onChanged: (value) {},
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String title;
  final bool value;
  final Function(bool value)? onChanged;
  const NotificationTile({
    Key? key,
    required this.title,
    required this.value,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: getPropScreenWidth(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: defaultTextStyle.copyWith(fontWeight: FontWeight.normal),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
