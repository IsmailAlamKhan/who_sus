import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/login_entity.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState implements LoginEntity {
  const LoginState._();
  const factory LoginState({
    required bool isAnonymous,
    required String? email,
    required String? password,
    required String? username,
  }) = _LoginState;

  static const LoginState initial = LoginState(isAnonymous: true, email: null, password: null, username: null);
}
