import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/utils/typedefs.dart';
import '../../domain/use_cases/login_use_case.dart';
import '../providers.dart';
import 'login_state.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  late LoginUseCase _loginUseCase;
  @override
  LoginState build() {
    _loginUseCase = ref.read(loginUseCaseProvider);
    return LoginState.initial;
  }

  void setUsername(String? value) {
    state = state.copyWith(username: value);
  }

  FutureEither<void> login() async {
    final params = LoginParams(
      username: state.username,
      isAnonymous: true,
      email: state.email,
      password: state.password,
    );

    return _loginUseCase(params);
  }
}
