import 'dart:developer';

import 'package:supabase_flutter/supabase_flutter.dart' hide User;

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
        try {
          final user = await getUserById(session.user.id);
          yield CurrentUserModel.authenticated(user);
        } on PostgrestException catch (e) {
          logout();
          log("Get user by id failed: ${e.message}", error: e);
          yield const CurrentUserModel.unauthenticated();
        }
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
  Future<void> logout() async {
    final currentUser = supabase.client.auth.currentUser;
    final isAnonymous = currentUser!.isAnonymous == true;
    if (isAnonymous) {
      await supabase.client.functions.invoke(
        'delete_user',
        body: {'uid': currentUser.id},
      );
    }
    return supabase.client.auth.signOut();
  }
}
