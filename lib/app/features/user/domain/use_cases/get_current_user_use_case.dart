import '../../../../core/utils/no_param.dart';
import '../../../../core/utils/typedefs.dart';
import '../../../../core/utils/usecase.dart';
import '../entities/current_user_entity.dart';
import '../repositories/user_repository.dart';

class GetCurrentUserUseCase extends StreamUseCase<CurrentUser, NoParams> {
  final UserRepository repository;

  GetCurrentUserUseCase(this.repository);

  @override
  StreamEither<CurrentUser> call(NoParams params) {
    return repository.getCurrentUser();
  }
}
