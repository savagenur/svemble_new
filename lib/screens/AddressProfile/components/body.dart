import 'package:flutter/material.dart';
import 'package:svemble_new/components/address_tile.dart';
import 'package:svemble_new/core/utils/size_config.dart';

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
              Padding(
                padding: EdgeInsets.only(bottom: getPropScreenWidth(20)),
                child: AddressTile(
                  isDefault: true,
                  title: "Дом",
                  subtitle: "district Lenin, Ala-Archa N337",
                  onTap: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: getPropScreenWidth(20)),
                child: AddressTile(
                  title: "Дом",
                  subtitle: "district Lenin, Ala-Archa N337",
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
