import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/supabase.dart';
import '../data/datasources/login_data_source.dart';
import '../data/datasources/supabase_login_data_source.dart';
import '../data/repositories/login_repository_impl.dart';
import '../domain/repositories/login_repository.dart';
import '../domain/use_cases/login_use_case.dart';

part 'providers.g.dart';

@riverpod
LoginDataSource loginDataSource(LoginDataSourceRef ref) {
  return SupabaseLoginDataSource(ref.read(supabaseClientProvider));
}

@riverpod
LoginRepository loginRepository(LoginRepositoryRef ref) {
  return LoginRepositoryImpl(ref.read(loginDataSourceProvider));
}

@riverpod
LoginUseCase loginUseCase(LoginUseCaseRef ref) {
  return LoginUseCase(ref.read(loginRepositoryProvider));
}
