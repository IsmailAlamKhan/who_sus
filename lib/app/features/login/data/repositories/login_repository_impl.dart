import '../../../../core/utils/return_either.dart';
import '../../../../core/utils/typedefs.dart';
import '../../domain/repositories/login_repository.dart';
import '../datasources/login_data_source.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource dataSource;

  LoginRepositoryImpl(this.dataSource);
  @override
  FutureEither<void> login({
    required String? username,
    required String? password,
    required String? email,
    required bool isAnonymous,
  }) {
    return returnEither(
      () => dataSource.login(username: username, password: password, email: email, isAnonymous: isAnonymous),
    );
  }
}
