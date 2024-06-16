import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../utils/env.dart';

part 'supabase.g.dart';

@Riverpod(keepAlive: true)
AppSupabaseClient supabaseClient(SupabaseClientRef ref) {
  return AppSupabaseClient();
}

class AppSupabaseClient {
  late SupabaseClient _client;
  SupabaseClient get client => _client;
  Future<void> init() async {
    const env = Env.instance;
    await Supabase.initialize(url: env.url, anonKey: env.anonKey);
    _client = Supabase.instance.client;
  }
}



// @riverpod
// CloudService<SupabaseClient> cloudService(CloudServiceRef ref) {
//   return SupabaseCloudService();
// }

// abstract class CloudService<T> {
//   Future<void> init();

//   T get client;
// }

// class SupabaseCloudService implements CloudService<SupabaseClient> {
//   @override
//   Future<void> init() {
//     const env = Env.instance;
//     return Supabase.initialize(url: env.url, anonKey: env.anonKey);
//   }

//   @override
//   SupabaseClient get client => Supabase.instance.client;
// }
