// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:svemble_new/product/models/category/category_model.dart';
import 'package:svemble_new/product/models/product_model.dart';
part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  factory ProductState({
    final ProductModel? product,
    final CategoryModel? category,
    @Default([]) final List<ProductModel> productList,
    @Default([]) final List<CategoryModel> categoryList,
    @Default(ProductStatus.initial) final ProductStatus productStatus,
    @Default(ProductListStatus.initial)
    final ProductListStatus productListStatus,
    @Default(CategoryListStatus.initial)
    final CategoryListStatus categoryListStatus,
    final String? productErrorMessage,
    final String? productListErrorMessage,
    final String? categoryListErrorMessage,
  }) = _ProductState;
}

enum ProductStatus {
  initial,
  loading,
  success,
  failure,
}

enum ProductListStatus {
  initial,
  loading,
  success,
  failure,
}

enum CategoryListStatus {
  initial,
  loading,
  success,
  failure,
}
