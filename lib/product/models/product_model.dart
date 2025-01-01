import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    final int? id,
    final String? title,
    final String? description,
    final String? category,
    final double? price,
    final double? discountPercentage,
    final double? rating,
    final int? stock,
    final List<String>? tags,
    final String? brand,
    final String? sku,
    final int? weight,
    final Dimensions? dimensions,
    final String? warrantyInformation,
    final String? shippingInformation,
    final String? availabilityStatus,
    final List<Review>? reviews,
    final String? returnPolicy,
    final int? minimumOrderQuantity,
    final Meta? meta,
    final List<String>? images,
    final String? thumbnail,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class Dimensions with _$Dimensions {
  const factory Dimensions({
    final double? width,
    final double? height,
    final double? depth,
  }) = _Dimensions;

  factory Dimensions.fromJson(Map<String, dynamic> json) =>
      _$DimensionsFromJson(json);
}

@freezed
class Review with _$Review {
  const factory Review({
    final double? rating,
    final String? comment,
    final String? date,
    final String? reviewerName,
    final String? reviewerEmail,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    final String? createdAt,
    final String? updatedAt,
    final String? barcode,
    final String? qrCode,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

// Todo delete
class ProductMock {
  final String title;
  final double rating;
  final int soldCount;
  final int price;
  final String image;
  bool isFavorite;
  bool isInCart;
  ProductMock({
    required this.title,
    required this.rating,
    required this.soldCount,
    required this.price,
    required this.image,
    this.isFavorite = false,
    this.isInCart = false,
  });
}
