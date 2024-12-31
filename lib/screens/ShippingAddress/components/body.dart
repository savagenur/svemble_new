import 'package:flutter/material.dart';
import 'package:svemble_new/components/default_button.dart';
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
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: EdgeInsets.only(bottom: getPropScreenWidth(20)),
                    child: const AddressRadioTile());
              },
            ),
            DefaultButton(
              text: "Добавить новый адрес",
              onTap: () {},
              backgroundColor: kBorderColor,
              textColor: kPrimaryColor,
            )
          ],
        ),
      ),
    );
  }
}

class AddressRadioTile extends StatelessWidget {
  const AddressRadioTile({
    Key? key,
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
      title: Text(
        "Дом",
        style: tertiaryBoldTextStyle,
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(top: getPropScreenWidth(10)),
        child: const Text(
          "district Lenin, Ala-Archa N337",
          overflow: TextOverflow.ellipsis,
        ),
      ),
      trailing: Radio(
        value: true,
        groupValue: true,
        onChanged: (value) {},
      ),
    );
  }
}
