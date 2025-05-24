import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';
import 'package:svemble_new/auth/repos/auth_repo.dart';
import 'package:svemble_new/core/errors/failure/failure.dart';
import 'package:svemble_new/injection_container.dart';
import 'package:svemble_new/product/models/product_model.dart';

class CartRepo {
  final _firestore = FirebaseFirestore.instance;
  final _authRepo = sl<AuthRepo>();
  Stream<List<ProductModel>> cartProductsStream() {
    return _firestore
        .collection("users")
        .doc(_authRepo.uid)
        .collection("cartProducts")
        .snapshots()
        .map(
      (querySnapshots) {
        return querySnapshots.docs.map(
          (e) {
            return ProductModel.fromJson(e.data());
          },
        ).toList();
      },
    );
  }

  Future<Either<AppFailure, Unit>> addProductToCart(
      ProductModel product) async {
    try {
      final result = jsonDecode(jsonEncode(product));
      await _firestore
          .collection("users")
          .doc(_authRepo.uid)
          .collection("cartProducts")
          .doc(
            product.id.toString(),
          )
          .set(
            result,
          );

      return Right(unit);
    } catch (e) {
      return Left(AppFailure(e.toString()));
    }
  }

  Future<Either<AppFailure, Unit>> deleteProductFromCart(
      int productId) async {
    try {
      await _firestore
          .collection("users")
          .doc(_authRepo.uid)
          .collection("cartProducts")
          .doc(
            productId.toString(),
          )
          .delete();
      return Right(unit);
    } catch (e) {
      return Left(AppFailure(e.toString()));
    }
  }

  Future<Either<AppFailure, Unit>> updateProductInCart(
      ProductModel product) async {
    try {
      await _firestore
          .collection("users")
          .doc(_authRepo.uid)
          .collection("cartProducts")
          .doc(
            product.id.toString(),
          )
          .update(
            product.toJson(),
          );
      return Right(unit);
    } catch (e) {
      return Left(AppFailure(e.toString()));
    }
  }
}
