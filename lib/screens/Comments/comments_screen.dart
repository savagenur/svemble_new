import 'package:flutter/material.dart';
import 'package:svemble_new/core/utils/constants.dart';
import 'package:svemble_new/product/models/product_model.dart';
import 'package:svemble_new/screens/Comments/components/body.dart';
import 'package:svemble_new/core/utils/size_config.dart';

class CommentsScreen extends StatelessWidget {
  final ProductModel product;
  static const routeName = "/comments";
  const CommentsScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, product),
      body: Body(
        reviews: product.reviews ?? [],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context, ProductModel product) {
    return AppBar(
      title: Text(
        "${product.rating} (${product.reviews?.length} reviews)",
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

class CommentScreenArguments {
  final ProductModel product;

  CommentScreenArguments({
    required this.product,
  });
}
