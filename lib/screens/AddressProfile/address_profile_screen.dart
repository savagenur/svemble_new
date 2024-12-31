import 'package:flutter/material.dart';
import 'package:svemble_new/core/utils/constants.dart';
import 'package:svemble_new/screens/AddressProfile/components/body.dart';

import '../../components/check_tile.dart';
import '../../components/confirm_and_cancel_btn.dart';
import '../../components/default_button.dart';
import '../../components/linear_oval_staff.dart';
import '../../core/utils/size_config.dart';

class AddressProfileScreen extends StatelessWidget {
  static const routeName = "/address-profile";
  const AddressProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: Text(
          "Адрес",
          style: headerTextStyle,
        ),
      ),
      body: const Body(),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(getPropScreenWidth(20)),
          child: DefaultButton(
            text: "Добавить Новый Адрес",
            onTap: () {
              showModalBottomSheet(
                enableDrag: true,
                isScrollControlled: true,
                context: context,
                builder: (context) => const AddNewAddressSheet(),
              );
            },
          ),
        ),
      ),
    );
  }
}

class AddNewAddressSheet extends StatefulWidget {
  const AddNewAddressSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNewAddressSheet> createState() => _AddNewAddressSheetState();
}

class _AddNewAddressSheetState extends State<AddNewAddressSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: getPropScreenWidth(20),
        left: getPropScreenWidth(20),
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LinearOvalStaff(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Добавить Новый Адрес",
              style: headerTextStyle,
            ),
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          const Divider(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          Text(
            "Название Адреса",
            style: defaultTextStyle,
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          const TextField(
            autofocus: true,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Пр: (Дом, Работа)",
            ),
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          Text(
            "Детали Адреса",
            style: defaultTextStyle,
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: "Введите Адрес ...",
            ),
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          CheckTile(
            text: "Установить по умолчанию",
            value: true,
            onChanged: (value) {},
          ),
          const Divider(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          Flexible(
            child: ConfirmAndCancelBtn(
              confirmTitle: "Добавить",
              onTap: () {},
            ),
          ),
          SizedBox(
            height: getPropScreenWidth(40),
          )
        ],
      ),
    );
  }
}
