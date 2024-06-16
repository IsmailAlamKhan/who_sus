abstract class LoginDataSource {
  Future<void> login({
    required String? username,
    required String? password,
    required String? email,
    required bool isAnonymous,
  });
}
