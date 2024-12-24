import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'title_and_sum.dart';

class ResultSumContainer extends StatelessWidget {
  const ResultSumContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getPropScreenWidth(20)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getPropScreenWidth(20)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const TitleAndSum(
            title: "Сумма",
            sum: "16400 сом",
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          const TitleAndSum(
            title: "Доставка",
            sum: "-",
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          const Divider(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          const TitleAndSum(
            title: "Общая сумма",
            sum: "16400 сом",
          ),
        ],
      ),
    );
  }
}