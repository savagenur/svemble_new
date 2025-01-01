// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:svemble_new/core/errors/failure/failure.dart';
import 'package:svemble_new/product/models/category/category_model.dart';
import 'package:svemble_new/product/models/product_model.dart';

class ProductRepo {
  final Dio dio;
  ProductRepo({
    required this.dio,
  });
  Future<Either<AppFailure, List<ProductModel>>> getProducts() async {
    try {
      final res = await dio.get(
        'https://dummyjson.com/products',
      );
      final products = (res.data["products"] as List).map(
        (json) {
          final product = ProductModel.fromJson(json as Map<String, dynamic>);
          return product;
        },
      ).toList();
      return Right(products);
    } catch (e) {
      return Left(AppFailure(e.toString()));
    }
  }

  Future<Either<AppFailure, List<CategoryModel>>> getAllCategories() async {
    try {
      final res = await dio.get(
        'https://dummyjson.com/products/categories',
      );
      final categories = (res.data as List).map(
        (json) {
          final category = CategoryModel.fromJson(json as Map<String, dynamic>);
          return category;
        },
      ).toList();
      return Right(categories);
    } catch (e) {
      return Left(AppFailure(e.toString()));
    }
  }
}
