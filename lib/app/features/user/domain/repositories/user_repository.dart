import '../../../../core/utils/typedefs.dart';
import '../entities/current_user_entity.dart';
import '../entities/user_entity.dart';

abstract class UserRepository {
  FutureEither<User> getUserById(String id);
  StreamEither<CurrentUser> getCurrentUser();
  FutureEither<void> logout();
}
