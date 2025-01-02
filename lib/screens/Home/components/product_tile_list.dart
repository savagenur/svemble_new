import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:svemble_new/core/utils/loader.dart';
import 'package:svemble_new/product/viewmodel/product_state.dart';
import 'package:svemble_new/product/viewmodel/product_viewmodel.dart';

import '../../../components/product_tile.dart';
import '../../../core/utils/size_config.dart';

class ProductTileList extends HookConsumerWidget {
  const ProductTileList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productViewmodel = ref.watch(productViewmodelProvider);
    final productNotifier = ref.read(productViewmodelProvider.notifier);
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) {},
      );
      return null;
    }, []);
    switch (productViewmodel.productListEventState) {
      case ProductListEventState.success:
        return GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .53,
            mainAxisSpacing: 5,
            crossAxisSpacing: 15,
          ),
          itemCount: productViewmodel.productList.length,
          itemBuilder: (BuildContext context, int index) {
            final product = productViewmodel.productList[index];
            return ProductTile(
              product: product,
            );
          },
        );

      case ProductListEventState.failure:
        return Center(
          child: Text(
            productViewmodel.productListErrorMessage ?? "Error",
          ),
        );
      default:
        return SizedBox(
          height: SizeConfig.screenHeight*.8,
          child: Loader());
    }
  }
}
