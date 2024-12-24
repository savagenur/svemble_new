import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class RemoveAndAdd extends StatelessWidget {
  const RemoveAndAdd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getPropScreenWidth(10), vertical: getPropScreenWidth(0)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getPropScreenWidth(30)),
        color: kSecondaryColor,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon:const Icon(Icons.remove),
          ),
          SizedBox(
            width: getPropScreenWidth(5),
          ),
          Text(
            "1",
            style: defaultTextStyle,
          ),
          SizedBox(
            width: getPropScreenWidth(5),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
