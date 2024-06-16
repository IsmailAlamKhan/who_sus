import '../../../../core/utils/typedefs.dart';
import '../../../../core/utils/usecase.dart';
import '../repositories/login_repository.dart';

class LoginParams {
  final String? username;
  final String? password;
  final String? email;
  final bool isAnonymous;
  const LoginParams({this.username, this.password, this.email, this.isAnonymous = false});
}

class LoginUseCase extends UseCase<void, LoginParams> {
  final LoginRepository repository;
  LoginUseCase(this.repository);

  @override
  FutureEither<void> call(LoginParams params) async {
    return await repository.login(
      username: params.username,
      password: params.password,
      email: params.email,
      isAnonymous: params.isAnonymous,
    );
  }
}
