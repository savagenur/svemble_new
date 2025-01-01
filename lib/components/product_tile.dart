import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:svemble_new/screens/DetailProduct/detail_product_screen.dart';

import '../core/utils/constants.dart';
import '../product/models/product_model.dart';
import '../core/utils/size_config.dart';
import 'small_text_bg.dart';

class ProductTile extends StatefulWidget {
  final ProductModel product;
  const ProductTile({
    super.key,
    required this.product,
  });

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          DetailProductScreen.routeName,
          arguments: DetailProductArguments(
            product: widget.product,
          ),
        );
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
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getPropScreenWidth(20),
                      ),
                      color: kSecondaryColor,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getPropScreenWidth(20),
                      ), // Ensures the image respects the border radius
                      child: widget.product.images?[0] != null
                          ? CachedNetworkImage(
                              imageUrl: widget.product.images![0],
                              fit: BoxFit
                                  .cover, // Ensures the image covers the entire container
                            )
                          : const SizedBox(), // Empty widget as fallback
                    ),
                  ),
                  Positioned(
                    right: getPropScreenWidth(15),
                    top: getPropScreenWidth(15),
                    child: InkWell(
                      borderRadius:
                          BorderRadius.circular(getPropScreenWidth(15)),
                      onTap: () {
                        setState(() {});
                      },
                      child: CircleAvatar(
                        radius: getPropScreenWidth(15),
                        backgroundColor: kPrimaryColor,
                        child: Icon(
                          Icons.favorite,
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
              SmallTextBg(text: "${widget.product.stock} продано"),
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
