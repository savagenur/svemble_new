import 'package:flutter/material.dart';
import 'package:svemble_new/core/utils/size_config.dart';

import '../../../core/utils/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(
                Icons.delivery_dining,
                size: getPropScreenWidth(30),
                color: kPrimaryColor,
              ),
              title: Text(
                "С доставкой",
                style: tertiaryBoldTextStyle,
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: getPropScreenWidth(10)),
                child: const Text(
                  "Внутри города -- 200 сом",
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              trailing: Radio(
                value: true,
                groupValue: true,
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(
                Icons.transfer_within_a_station_outlined,
                size: getPropScreenWidth(30),
                color: kPrimaryColor,
              ),
              title: Text(
                "Без доставки",
                style: tertiaryBoldTextStyle,
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: getPropScreenWidth(10)),
                child: const Text(
                  "--",
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              trailing: Radio(
                value: true,
                groupValue: true,
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
