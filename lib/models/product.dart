class Product {
  final String title;
  final double rating;
  final int soldCount;
  final int price;
  final String image;
   bool isFavorite;
   bool isInCart;
  Product({
    required this.title,
    required this.rating,
    required this.soldCount,
    required this.price,
    required this.image,
    this.isFavorite = false,
    this.isInCart = false,
  });
}
