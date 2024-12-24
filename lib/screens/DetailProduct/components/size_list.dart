import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../data/sizes.dart';
import '../../../size_config.dart';

class SizeList extends StatelessWidget {
  const SizeList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            border: Border.all(color: kSecondaryColor,width: 2),
      borderRadius: BorderRadius.circular(getPropScreenWidth(30)),

          ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(getPropScreenWidth(30)),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.all(getPropScreenWidth(5)),
            child: Row(
              children: allSizes
                  .map(
                    (size) => GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(right: getPropScreenWidth(10)),
                        child: Container(
                          height: getPropScreenWidth(35),
                          width: getPropScreenWidth(35),
                          padding: EdgeInsets.all(getPropScreenWidth(5)),
                          decoration: BoxDecoration(
                              color: size == "37" ? kPrimaryColor : null,
                              shape: BoxShape.circle,
                              border: Border.all(width: 2)),
                          child: Center(
                              child: Text(
                            size,
                            style: defaultTextStyle.copyWith(
                                fontWeight: FontWeight.normal,
                                color: size == "37" ? Colors.white : null),
                          )),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}