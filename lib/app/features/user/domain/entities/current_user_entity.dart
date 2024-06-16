import 'user_entity.dart';

abstract class CurrentUser {
  User? get authenticatedUser;
  bool get isAnonymous;
  bool get isAuthenticated;
}
