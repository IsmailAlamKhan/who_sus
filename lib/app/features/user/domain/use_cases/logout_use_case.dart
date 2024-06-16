import '../../../../core/utils/no_param.dart';
import '../../../../core/utils/typedefs.dart';
import '../../../../core/utils/usecase.dart';
import '../repositories/user_repository.dart';

class LogoutUseCase extends UseCase<void, NoParams> {
  final UserRepository repository;

  LogoutUseCase(this.repository);

  @override
  FutureEither<void> call(NoParams params) {
    return repository.logout();
  }
}
