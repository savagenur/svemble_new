import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:svemble_new/cart/repo/cart_repo.dart';
import 'package:svemble_new/cart/viewmodel/cart_state.dart';
import 'package:svemble_new/core/errors/failure/failure.dart';
import 'package:svemble_new/injection_container.dart';
import 'package:svemble_new/product/models/product_model.dart';

part 'cart_viewmodel.g.dart';

@riverpod
class CartViewmodel extends _$CartViewmodel {
  // Dependency Injection for CartRepo
  final CartRepo _cartRepo = sl<CartRepo>();

  // Initial state
  @override
  CartState build() {
    cartProductsStream();
    return CartState();
  }

  void cartProductsStream() {
    _cartRepo.cartProductsStream().listen(
      (products) {
        state = state.copyWith(productList: products);
      },
    );
  }

  Future<void> addProductToCart({required ProductModel product}) async {
    state = state.copyWith(
      cartProductStatus: CartProductStatus.loading,
    );
    final res = await _cartRepo.addProductToCart(product);
    state = res.fold(
      (failure) => state = state.copyWith(
          cartProductStatus: CartProductStatus.failure,
          cartProductErrorMessage: failure.message),
      (_) => state.copyWith(
        cartProductStatus: CartProductStatus.success,
      ),
    );
  }

  Future<void> deleteProductFromCart({required int productId}) async {
    state = state.copyWith(cartProductStatus: CartProductStatus.loading);
    final res = await _cartRepo.deleteProductFromCart(productId);
    state = res.match(
      (l) => state.copyWith(
        cartProductStatus: CartProductStatus.failure,
        cartProductErrorMessage: l.message,
      ),
      (r) => state.copyWith(
        cartProductStatus: CartProductStatus.success,
      ),
    );
  }
}
