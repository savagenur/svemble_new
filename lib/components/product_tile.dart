import 'package:flutter/material.dart';
import 'package:svemble_new/screens/DetailProduct/detail_product_screen.dart';

import '../constants.dart';
import '../models/product.dart';
import '../size_config.dart';
import 'small_text_bg.dart';

class ProductTile extends StatefulWidget {
  final Product product;
  const ProductTile({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailProductScreen.routeName);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 1,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getPropScreenWidth(20),
                      ),
                      color: kSecondaryColor,
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(widget.product.image)),
                  ),
                  Positioned(
                    right: getPropScreenWidth(15),
                    top: getPropScreenWidth(15),
                    child: InkWell(
                      borderRadius:
                          BorderRadius.circular(getPropScreenWidth(15)),
                      onTap: () {
                        setState(() {
                          widget.product.isFavorite =
                              !widget.product.isFavorite;
                        });
                      },
                      child: CircleAvatar(
                        radius: getPropScreenWidth(15),
                        backgroundColor: kPrimaryColor,
                        child: Icon(
                          widget.product.isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.white,
                          size: getPropScreenWidth(18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: getPropScreenWidth(10),
          ),
          Text(
            "${widget.product.title}\n",
            maxLines: 2,
            style: defaultTextStyle,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: getPropScreenWidth(5),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.star),
              SizedBox(
                width: getPropScreenWidth(5),
              ),
              Text("${widget.product.rating}  |  "),
              SmallTextBg(text: "${widget.product.soldCount} продано"),
            ],
          ),
          SizedBox(
            height: getPropScreenWidth(10),
          ),
          Text(
            "${widget.product.price} сом",
            style: defaultTextStyle,
          )
        ],
      ),
    );
  }
}
