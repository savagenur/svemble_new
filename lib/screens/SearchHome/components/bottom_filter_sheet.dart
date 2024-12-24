import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../components/category_row_items.dart';
import '../../../components/default_button.dart';
import '../../../components/linear_oval_staff.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'rating_row_items.dart';
import 'sort_by_items.dart';

class BottomFilterSheet extends StatefulWidget {
  const BottomFilterSheet({super.key});

  @override
  State<BottomFilterSheet> createState() => BottomFilterSheetState();
}

class BottomFilterSheetState extends State<BottomFilterSheet> {
  SfRangeValues _values = const SfRangeValues(5000.0, 20000.0);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const LinearOvalStaff(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          Text(
            "Фильтр & Сортировка",
            style: headerTextStyle,
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
              child: const Divider()),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FilterTitle(
                title: "Категории",
              ),
              SizedBox(
                height: getPropScreenWidth(15),
              ),
              const CategoryRowItems(),
              SizedBox(
                height: getPropScreenWidth(20),
              ),
              const FilterTitle(title: "Ценовой диапазон"),
              SizedBox(
                height: getPropScreenWidth(60),
              ),
              buildPriceRangeSlider(),
              SizedBox(
                height: getPropScreenWidth(20),
              ),
              const FilterTitle(title: "Сортировка"),
              SizedBox(
                height: getPropScreenWidth(20),
              ),
              const SortByRowItems(),
              SizedBox(
                height: getPropScreenWidth(20),
              ),
              const FilterTitle(title: "Рейтинг"),
              SizedBox(
                height: getPropScreenWidth(20),
              ),
              const RatingRowItems(),
              SizedBox(
                height: getPropScreenWidth(20),
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
                  child: const Divider()),
              SizedBox(
                height: getPropScreenWidth(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DefaultButton(
                    backgroundColor: kSecondaryColor,
                    textColor: kPrimaryColor,
                    text: "Сбросить",
                    onTap: () {
                      Navigator.pop(context);
                    },
                    width: SizeConfig.screenWidth * .4,
                  ),
                  DefaultButton(
                    text: "Применить",
                    onTap: () {
                      Navigator.pop(context);
                    },
                    width: SizeConfig.screenWidth * .4,
                  ),
                ],
              ),
              SizedBox(
                height: getPropScreenWidth(50),
              ),
            ],
          )
        ],
      ),
    );
  }

  SfRangeSliderTheme buildPriceRangeSlider() {
    return SfRangeSliderTheme(
      data: SfRangeSliderThemeData(
        tooltipBackgroundColor: kPrimaryColor,
      ),
      child: SfRangeSlider(
        values: _values,
        min: 0,
        max: 50000,
        interval: 10000,
        showTicks: true,
        numberFormat: NumberFormat.simpleCurrency(
            locale: "fr", decimalDigits: 0, name: "с"),
        showLabels: true,
        enableTooltip: true,
        shouldAlwaysShowTooltip: true,
        minorTicksPerInterval: 3,
        onChanged: (SfRangeValues values) {
          setState(() {
            _values = values;
          });
        },
      ),
    );
  }
}

class FilterTitle extends StatelessWidget {
  final String title;
  const FilterTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      child: Text(
        title,
        style: defaultTextStyle,
      ),
    );
  }
}
