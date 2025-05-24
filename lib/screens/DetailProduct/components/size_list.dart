import 'package:flutter/material.dart';
import 'package:svemble_new/core/enums/product_size.dart';

import '../../../core/utils/constants.dart';
import '../../../core/utils/size_config.dart';

class SizeList extends StatefulWidget {
  const SizeList({
    super.key,
  });

  @override
  State<SizeList> createState() => _SizeListState();
}

class _SizeListState extends State<SizeList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kSecondaryColor, width: 2),
        borderRadius: BorderRadius.circular(getPropScreenWidth(30)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(getPropScreenWidth(30)),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.all(getPropScreenWidth(5)),
            child: Row(
              children: ProductSize.values
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
                              color: kPrimaryColor,
                              // color: size == "37" ? kPrimaryColor : null,
                              shape: BoxShape.circle,
                              border: Border.all(width: 2)),
                          child: Center(
                              child: Text(
                            size.name.toUpperCase(),
                            style: defaultTextStyle.copyWith(
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              // color: size == "37" ? Colors.white : null,
                            ),
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
