import '../../../../core/utils/typedefs.dart';
import '../../../../core/utils/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class GetUserByIdUseCase extends UseCase<User, String> {
  final UserRepository _repository;

  GetUserByIdUseCase(this._repository);

  @override
  FutureEither<User> call(String id) {
    return _repository.getUserById(id);
  }
}
