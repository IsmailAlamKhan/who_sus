import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/supabase.dart';
import '../data/datasources/supabase_user_data_source.dart';
import '../data/datasources/user_data_source.dart';
import '../data/repositories/user_repository_impl.dart';
import '../domain/entities/user_entity.dart';
import '../domain/repositories/user_repository.dart';
import '../domain/use_cases/get_current_user_use_case.dart';
import '../domain/use_cases/get_user_by_id_use_case.dart';
import '../domain/use_cases/logout_use_case.dart';

part 'providers.g.dart';

@riverpod
UserDataSource userDataSource(UserDataSourceRef ref) {
  return SupabaseUserDataSource(ref.watch(supabaseClientProvider));
}

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  return UserRepositoryImpl(ref.watch(userDataSourceProvider));
}

@riverpod
GetCurrentUserUseCase getCurrentUserUseCase(GetCurrentUserUseCaseRef ref) {
  return GetCurrentUserUseCase(ref.watch(userRepositoryProvider));
}

@riverpod
GetUserByIdUseCase getUserByIdUseCase(GetUserByIdUseCaseRef ref) {
  return GetUserByIdUseCase(ref.watch(userRepositoryProvider));
}

@riverpod
LogoutUseCase logOutUseCase(LogOutUseCaseRef ref) {
  return LogoutUseCase(ref.watch(userRepositoryProvider));
}

@riverpod
FutureOr<User> getUserById(GetUserByIdRef ref, String id) {
  return ref.read(getUserByIdUseCaseProvider).call(id).then((value) => value.fold((l) => throw l, (r) => r));
}
