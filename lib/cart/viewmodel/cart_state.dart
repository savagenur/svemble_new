// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:svemble_new/product/models/product_model.dart';
part 'cart_state.freezed.dart';

/// Represent the state of the cart
@freezed
class CartState with _$CartState {
  factory CartState({
    @Default([]) final List<ProductModel> productList,
    final ProductModel? product,
    @Default(CartProductStatus.initial)
    final CartProductStatus cartProductStatus,
    final String? cartProductErrorMessage,
  }) = _CartState;
}

/// Status of the product list within the cart
enum CartProductStatus {
  initial,
  loading,
  success,
  failure,
}
