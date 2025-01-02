// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:svemble_new/product/models/category/category_model.dart';
import 'package:svemble_new/product/models/product_model.dart';
part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  factory  ProductState({
    final ProductModel? product,
    final CategoryModel? category,
    @Default([]) final List<ProductModel> productList,
    @Default([]) final List<CategoryModel> categoryList,
    @Default(ProductEventState.initial)
    final ProductEventState productEventState,
    @Default(ProductListEventState.initial)
    final ProductListEventState productListEventState,
    @Default(CategoryListEventState.initial)
    final CategoryListEventState categoryListEventState,
    final String? productErrorMessage,
    final String? productListErrorMessage,
    final String? categoryListErrorMessage,
  }) = _ProductState;
}

enum ProductEventState {
  initial,
  loading,
  success,
  failure,
}

enum ProductListEventState {
  initial,
  loading,
  success,
  failure,
}
enum CategoryListEventState {
  initial,
  loading,
  success,
  failure,
}
