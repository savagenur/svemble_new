import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:svemble_new/injection_container.dart';
import 'package:svemble_new/product/repos/product_repo.dart';
import 'package:svemble_new/product/viewmodel/product_state.dart';

part 'product_viewmodel.g.dart';

@riverpod
class ProductViewmodel extends _$ProductViewmodel {
  // Dependency Injection for ProductRepo
  final ProductRepo _productRepo = sl<ProductRepo>();

  // Initial state
  @override
  ProductState build() {
    return ProductState();
  }

  /// Fetch all products and update the state
  Future<void> getProducts() async {
    // Set loading state
    state =
        state.copyWith(productListEventState: ProductListEventState.loading);

    final result = await _productRepo.getProducts();

    state = result.fold(
      // Handle failure
      (failure) => state.copyWith(
        productListEventState: ProductListEventState.failure,
        productListErrorMessage: failure.message,
      ),
      // Handle success
      (products) => state.copyWith(
        productListEventState: ProductListEventState.success,
        productList: products,
      ),
    );
  }

  Future<void> getAllCategories() async {
    // Set loading state
    state =
        state.copyWith(categoryListEventState: CategoryListEventState.loading);

    final result = await _productRepo.getAllCategories();

    state = result.fold(
      // Handle failure
      (failure) => state.copyWith(
        categoryListEventState: CategoryListEventState.failure,
        categoryListErrorMessage: failure.message,
      ),
      // Handle success
      (products) => state.copyWith(
        categoryListEventState: CategoryListEventState.success,
        categoryList: products,
      ),
    );
  }
}
