import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:svemble_new/injection_container.dart';
import 'package:svemble_new/product/models/category/category_model.dart';
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

  Future<void> getProductsByCategory({required String categoryQuery}) async {
    // Set loading state
    state =
        state.copyWith(productListEventState: ProductListEventState.loading);

    final result = await _productRepo.getProductsByCategory(
      categoryQuery: categoryQuery,
    );

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

  Future<void> getCategories() async {
    // Set loading state
    state =
        state.copyWith(categoryListEventState: CategoryListEventState.loading);

    final result = await _productRepo.getCategories();

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

  void setCategory({required CategoryModel? category}) {
    state = state.copyWith(
      category: category,
    );
  }
}
