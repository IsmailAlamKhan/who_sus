import '../../../../core/utils/return_either.dart';
import '../../../../core/utils/typedefs.dart';
import '../../domain/entities/current_user_entity.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/user_data_source.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDataSource dataSource;

  UserRepositoryImpl(this.dataSource);

  @override
  StreamEither<CurrentUser> getCurrentUser() {
    return returnEitherStream(() => dataSource.getCurrentUser());
  }

  @override
  FutureEither<User> getUserById(String id) {
    return returnEither(() => dataSource.getUserById(id));
  }

  @override
  FutureEither<void> logout() {
    return returnEither(() => dataSource.logout());
  }
}
