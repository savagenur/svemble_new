import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:svemble_new/auth/models/user/user_model.dart';
import 'package:svemble_new/core/errors/failure/failure.dart';

class AuthRepo {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? get currentUser => _firebaseAuth.currentUser;
  bool get isAuthenticated => _firebaseAuth.currentUser != null;
  Future<Either<AppFailure, UserModel>> signIn(
      String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = userCredential.user;
      if (user != null) {
        final userModel = UserModel(
          userId: user.uid,
          username: user.displayName ?? "No Username",
          email: user.email,
        );
        return Right(userModel);
      } else {
        return Left(AppFailure('User not found'));
      }
    } on FirebaseAuthException catch (e) {
      return Left(AppFailure(_mapFirebaseAuthError(e.code)));
    }
  }

  Future<Either<AppFailure, UserModel>> signUp(
      String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = userCredential.user;
      if (user != null) {
        final userModel = UserModel(
          userId: user.uid,
          username: user.displayName ?? "No Username",
          email: user.email,
        );
        return Right(userModel);
      } else {
        return Left(AppFailure('User creation failed'));
      }
    } on FirebaseAuthException catch (e) {
      return Left(AppFailure(_mapFirebaseAuthError(e.code)));
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  String _mapFirebaseAuthError(String code) {
    switch (code) {
      case 'invalid-email':
        return 'The email address is not valid.';
      case 'user-disabled':
        return 'The user account has been disabled.';
      case 'user-not-found':
        return 'No user found for this email.';
      case 'wrong-password':
        return 'The password is incorrect.';
      case 'email-already-in-use':
        return 'The email is already in use.';
      case 'weak-password':
        return 'The password is too weak.';
      default:
        return 'An unknown error occurred.';
    }
  }
}
