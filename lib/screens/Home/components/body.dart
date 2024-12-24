import 'package:flutter/material.dart';
import 'package:svemble_new/screens/Home/components/product_tile_list.dart';
import 'package:svemble_new/screens/Home/components/search_text_field.dart';
import 'package:svemble_new/screens/Popular/popular_screen.dart';
import 'package:svemble_new/screens/SpecialOffer/special_offer_screen.dart';
import 'package:svemble_new/size_config.dart';

import 'categories.dart';
import '../../../components/category_row_items.dart';
import 'offer_and_more_btn.dart';
import '../../../components/offer_images.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            const SearchTextField(),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
              child: OfferAndMoreBtn(
                title: "Особые Акции",
                onTap: () {
                  Navigator.pushNamed(context, SpecialOfferScreen.routeName);
                },
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            const OfferImages(),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            const Categories(),
            SizedBox(
              height: getPropScreenWidth(10),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
              child: OfferAndMoreBtn(
                title: "Самые Популярные",
                onTap: () {
                  Navigator.pushNamed(context, PopularScreen.routeName);
                },
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            const CategoryRowItems(),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            const ProductTileList(),
            SizedBox(
              height: getPropScreenWidth(40),
            ),
          ],
        ),
      ),
    );
  }
}
