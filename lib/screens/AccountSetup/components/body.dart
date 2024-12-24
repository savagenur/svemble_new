import 'package:flutter/material.dart';
import 'package:svemble_new/components/default_button.dart';
import 'package:svemble_new/screens/Main/main_screen.dart';
import 'package:svemble_new/size_config.dart';

import '../../../components/profile_avatar_with_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: getPropScreenWidth(20),
        ),
        child: Column(
          children: [
            ProfileAvatarWithBtn(
              imageWidget: Image.asset(
                "assets/images/user.png",
              ),
              onTap: () {},
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Имя",
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Фамилия",
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Ваш Ник",
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(getPropScreenWidth(10)),
              onTap: () {},
              child: TextFormField(
                enabled: false,
                decoration: const InputDecoration(
                  hintText: "День рождение",
                  suffixIcon: Icon(Icons.calendar_month),
                ),
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Электронный адрес",
                suffixIcon: Icon(Icons.mail),
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: getPropScreenWidth(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "🇰🇬",
                        style: TextStyle(fontSize: getPropScreenWidth(30)),
                      ),
                      const Icon(Icons.arrow_drop_down_rounded)
                    ],
                  ),
                ),
                hintText: "Телефонный номер",
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(getPropScreenWidth(10)),
              child: TextFormField(
                decoration: InputDecoration(
                  enabled: false,
                  hintText: "Ваш пол",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_drop_down_rounded,
                      size: getPropScreenWidth(30),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(40),
            ),
            DefaultButton(
              text: "Готово",
              onTap: () {
                Navigator.pushReplacementNamed(context, MainScreen.routeName);
              },
            ),
            SizedBox(
              height: getPropScreenWidth(40),
            ),
          ],
        ),
      ),
    );
  }
}
