import '../../../../core/network/supabase.dart';
import '../../domain/entities/current_user_entity.dart';
import '../../domain/entities/user_entity.dart';
import '../models/current_user.dart';
import '../models/user_model.dart';
import 'user_data_source.dart';

class SupabaseUserDataSource implements UserDataSource {
  final AppSupabaseClient supabase;

  SupabaseUserDataSource(this.supabase);
  @override
  Stream<CurrentUser> getCurrentUser() async* {
    await for (final event in supabase.client.auth.onAuthStateChange) {
      final session = event.session;
      if (session != null) {
        final user = await getUserById(session.user.id);
        yield CurrentUserModel.authenticated(user);
      } else {
        yield const CurrentUserModel.unauthenticated();
      }
    }
  }

  @override
  Future<User> getUserById(String id) {
    return supabase.client.from('profiles').select().eq('id', id).single().then((value) {
      return UserModel.fromJson(value);
    });
  }

  @override
  Future<void> logout() {
    return supabase.client.auth.signOut();
  }
}
