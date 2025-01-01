import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:svemble_new/core/utils/size_config.dart';
import 'package:svemble_new/product/viewmodel/product_viewmodel.dart';
import 'package:svemble_new/screens/Home/components/product_tile_list.dart';
import 'package:svemble_new/screens/Home/components/search_text_field.dart';
import 'package:svemble_new/screens/Popular/popular_screen.dart';
import 'package:svemble_new/screens/SpecialOffer/special_offer_screen.dart';

import '../../../components/category_row_items.dart';
import '../../../components/offer_images.dart';
import 'category_list_view.dart';
import 'offer_and_more_btn.dart';

class Body extends HookConsumerWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productViewmodel = ref.watch(productViewmodelProvider);
    final productNotifier = ref.read(productViewmodelProvider.notifier);
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) {
          productNotifier.getProducts();
        },
      );
      return null;
    }, []);
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
            const CategoryListView(),
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
