import '../../../../core/utils/typedefs.dart';

abstract class LoginRepository {
  FutureEither<void> login({
    required String? username,
    required String? password,
    required String? email,
    required bool isAnonymous,
  });
}
