import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:svemble_new/core/utils/constants.dart';
import 'package:svemble_new/product/viewmodel/product_viewmodel.dart';
import 'package:svemble_new/screens/Category/components/body.dart';
import 'package:svemble_new/core/utils/size_config.dart';

class CategoryScreen extends ConsumerWidget {
  static const routeName = "/category";
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: buildAppBar(context, ref),
      body: const Body(),
    );
  }

  AppBar buildAppBar(BuildContext context, WidgetRef ref) {
    final productViewmodel = ref.watch(productViewmodelProvider);
    return AppBar(
      title: Text(
        productViewmodel.category?.name ?? "",
        style: headerTextStyle,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        SizedBox(
          width: getPropScreenWidth(10),
        ),
      ],
    );
  }
}
