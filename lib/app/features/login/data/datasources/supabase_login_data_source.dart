import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/supabase.dart';
import 'login_data_source.dart';

class SupabaseLoginDataSource implements LoginDataSource {
  final AppSupabaseClient client;

  SupabaseLoginDataSource(this.client);
  @override
  Future<void> login({
    required String? username,
    required String? password,
    required String? email,
    required bool isAnonymous,
  }) {
    final auth = client.client.auth;
    if (isAnonymous) {
      return auth.signInAnonymously(data: {'username': username});
    }
    if (username != null && password != null) {
      return auth.signInWithPassword(email: email, password: password);
    }
    throw const AppException.unknown();
  }
}
