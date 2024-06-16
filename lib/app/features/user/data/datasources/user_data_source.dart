import '../../domain/entities/current_user_entity.dart';
import '../../domain/entities/user_entity.dart';

abstract class UserDataSource {
  Stream<CurrentUser> getCurrentUser();
  Future<User> getUserById(String id);
  Future<void> logout();
}
