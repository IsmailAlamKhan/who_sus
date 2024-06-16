import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/current_user.dart';
import '../controllers/current_user_controller.dart';

class CurrentUserListener extends ConsumerWidget {
  const CurrentUserListener({super.key, required this.onAuthenticated, required this.onUnauthenticated});
  final WidgetBuilder onAuthenticated;
  final WidgetBuilder onUnauthenticated;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CurrentUserModel currentUser = ref.watch(currentUserControllerProvider) as CurrentUserModel;
    return currentUser.when(
      authenticated: (user) => onAuthenticated(context),
      unauthenticated: () => onUnauthenticated(context),
    );
  }
}
