import 'dart:developer';

import 'package:svemble_new/auth/models/user/user_model.dart';
import 'package:svemble_new/auth/repos/auth_repo.dart';
import 'package:svemble_new/auth/viewmodels/auth/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:svemble_new/injection_container.dart';
import 'package:svemble_new/main.dart';
import 'package:svemble_new/screens/Main/main_screen.dart';
part 'auth_viewmodel.g.dart';

@riverpod
class AuthViewmodel extends _$AuthViewmodel {
  final _authRepo = sl<AuthRepo>();
  @override
  AuthState build() {
    if (_authRepo.isAuthenticated) {
      return AuthState(
        user: UserModel(
          userId: _authRepo.currentUser?.uid,
          email: _authRepo.currentUser?.email,
          username: "Unknown",
        ),
        status: Authenticated(),
      );
    } else {
      return AuthState(
        status: Unauthenticated(),
      );
    }
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    state = state.copyWith(
      status: AuthLoading(),
    );
    final res = await _authRepo.signIn(email, password);
    res.fold(
      (failure) {
        state = state.copyWith(
          status: Unauthenticated(),
          errorMessage: failure.message,
        );
      },
      (user) {
        state = state.copyWith(
          status: Authenticated(),
          user: user,
          errorMessage: null,
        );
        navigatorKey.currentState?.pushNamedAndRemoveUntil(
          MainScreen.routeName,
          (route) => false,
        );
      },
    );
    log(state.errorMessage ?? "null");
    log(state.status.toString());
  }

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    state = state.copyWith(
      status: AuthLoading(),
    );
    final res = await _authRepo.signUp(email, password);
    state = res.fold(
      (failure) => state.copyWith(
        status: Unauthenticated(),
        errorMessage: failure.message,
      ),
      (user) {
        navigatorKey.currentState?.pushNamedAndRemoveUntil(
          MainScreen.routeName,
          (route) => false,
        );
        return state.copyWith(
          status: Authenticated(),
          user: user,
          errorMessage: null,
        );
      },
    );
  }

  Future<void> signOut() async {
    try {
      state = state.copyWith(
        status: AuthLoading(),
      );
      await _authRepo.signOut();
      state = state.copyWith(
        status: Unauthenticated(),
        user: null,
      );
    } catch (e) {
      log(
        e.toString(),
      );
    }
  }
}
