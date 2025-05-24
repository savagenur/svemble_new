// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:svemble_new/auth/models/user/user_model.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    final UserModel? user,
    @Default(
      AuthInitial(),
    )
    final AuthStatus status,
    final String? errorMessage,
  }) = _AuthState;
}

sealed class AuthStatus {
  const AuthStatus();
}

class AuthInitial extends AuthStatus {
  const AuthInitial();
}

class Authenticated extends AuthStatus {}

class Unauthenticated extends AuthStatus {}

class AuthLoading extends AuthStatus {}
