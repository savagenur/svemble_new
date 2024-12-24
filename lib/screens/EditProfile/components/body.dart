import 'package:flutter/material.dart';
import 'package:svemble_new/constants.dart';
import 'package:svemble_new/size_config.dart';

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
                onTap: () {},
                enabled: false,
                decoration: const InputDecoration(
                  hintText: "28.05.1997",
                  hintStyle: TextStyle(color: kPrimaryColor),
                  suffixIcon: Icon(
                    Icons.calendar_month,
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
                        children: const [
                          Text(
                            "(+996) ",
                            style: TextStyle(
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    hintText: "Телефонный номер",
                    suffixIcon: const Icon(
                      Icons.phone_android_outlined,
                    )),
              ),
              SizedBox(
                height: getPropScreenWidth(20),
              ),
              TextFormField(
                onTap: () {},
                decoration: InputDecoration(
                  enabled: false,
                  hintText: "Мужской",
                  hintStyle: const TextStyle(color: kPrimaryColor),
                  suffixIcon: Icon(
                    Icons.arrow_drop_down_rounded,
                    size: getPropScreenWidth(30),
                  ),
                ),
              ),
              SizedBox(
                height: getPropScreenWidth(20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
