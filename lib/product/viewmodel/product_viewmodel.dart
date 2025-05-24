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
    state = state.copyWith(productListStatus: ProductListStatus.loading);

    final result = await _productRepo.getProducts();

    state = result.fold(
      // Handle failure
      (failure) => state.copyWith(
        productListStatus: ProductListStatus.failure,
        productListErrorMessage: failure.message,
      ),
      // Handle success
      (products) => state.copyWith(
        productListStatus: ProductListStatus.success,
        productList: products,
      ),
    );
  }

  Future<void> getProductsByCategory({required String categoryQuery}) async {
    // Set loading state
    state = state.copyWith(productListStatus: ProductListStatus.loading);

    final result = await _productRepo.getProductsByCategory(
      categoryQuery: categoryQuery,
    );

    state = result.fold(
      // Handle failure
      (failure) => state.copyWith(
        productListStatus: ProductListStatus.failure,
        productListErrorMessage: failure.message,
      ),
      // Handle success
      (products) => state.copyWith(
        productListStatus: ProductListStatus.success,
        productList: products,
      ),
    );
  }

  Future<void> getCategories() async {
    // Set loading state
    state = state.copyWith(categoryListStatus: CategoryListStatus.loading);

    final result = await _productRepo.getCategories();

    state = result.fold(
      // Handle failure
      (failure) => state.copyWith(
        categoryListStatus: CategoryListStatus.failure,
        categoryListErrorMessage: failure.message,
      ),
      // Handle success
      (products) => state.copyWith(
        categoryListStatus: CategoryListStatus.success,
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
