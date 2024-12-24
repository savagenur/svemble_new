import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class LinearOvalStaff extends StatelessWidget {
  const LinearOvalStaff({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getPropScreenWidth(5)),
      child: Container(
        width: getPropScreenWidth(40),
        height: getPropScreenWidth(3),
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(
            getPropScreenWidth(30),
          ),
        ),
      ),
    );
  }
}