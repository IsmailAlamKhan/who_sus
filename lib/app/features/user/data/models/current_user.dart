import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/current_user_entity.dart';
import '../../domain/entities/user_entity.dart';

part 'current_user.freezed.dart';

@freezed
class CurrentUserModel with _$CurrentUserModel implements CurrentUser {
  const CurrentUserModel._();
  const factory CurrentUserModel.authenticated(User user) = AuthenticatedCurrentUserModel;
  const factory CurrentUserModel.unauthenticated() = UnauthenticatedCurrentUserModel;

  @override
  User? get authenticatedUser => whenOrNull(authenticated: (user) => user);

  @override
  bool get isAnonymous => when(authenticated: (user) => user.isAnonymous, unauthenticated: () => true);

  @override
  bool get isAuthenticated => when(authenticated: (_) => true, unauthenticated: () => false);
}
