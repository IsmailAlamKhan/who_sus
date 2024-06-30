import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/utils/no_param.dart';
import '../../../../core/utils/typedefs.dart';
import '../../data/models/current_user.dart';
import '../../domain/entities/current_user_entity.dart';
import '../../domain/use_cases/get_current_user_use_case.dart';
import '../../domain/use_cases/logout_use_case.dart';
import '../providers.dart';

part 'current_user_controller.g.dart';

@Riverpod(keepAlive: true)
class CurrentUserController extends _$CurrentUserController {
  late GetCurrentUserUseCase _getCurrentUserUseCase;
  late LogoutUseCase _logoutUseCase;
  final _streamController = StreamController<CurrentUser>.broadcast();
  @override
  CurrentUser build() {
    _getCurrentUserUseCase = ref.read(getCurrentUserUseCaseProvider);
    _logoutUseCase = ref.read(logOutUseCaseProvider);
    _streamController.stream.listen((event) => state = event);

    ref.onDispose(() => _streamController.close());

    return const CurrentUserModel.unauthenticated();
  }

  Future<void> init() {
    final sub = _getCurrentUserUseCase(const NoParams()).listen((event) {
      event.fold(_streamController.addError, _streamController.add);
    });
    _streamController.onCancel = () {
      sub.cancel();
    };

    return _streamController.stream.first;
  }

  FutureEither<void> logout() {
    final res = _logoutUseCase(const NoParams());
    return res;
  }
}
