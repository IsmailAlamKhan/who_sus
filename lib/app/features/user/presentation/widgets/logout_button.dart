import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/current_user_controller.dart';

typedef LogoutButtonBuilder = Widget Function(BuildContext context, bool isLoading, VoidCallback? onPressed);

class LogoutButton extends ConsumerStatefulWidget {
  // const LogoutButton._({super.key, this.builder, this.iconSize});
  final LogoutButtonBuilder? builder;
  final double? iconSize;

  const LogoutButton.icon({super.key, this.iconSize}) : builder = null;
  const LogoutButton.builder({super.key, required LogoutButtonBuilder this.builder}) : iconSize = null;

  @override
  _LogoutButtonState createState() => _LogoutButtonState();
}

class _LogoutButtonState extends ConsumerState<LogoutButton> {
  bool isLoading = false;

  VoidCallback? get onPressed {
    if (isLoading) {
      return null;
    }
    return () async {
      try {
        setState(() => isLoading = true);
        await ref.read(currentUserControllerProvider.notifier).logout();
      } finally {
        if (mounted) setState(() => isLoading = false);
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (widget.builder case LogoutButtonBuilder builder?) {
      child = builder(context, isLoading, onPressed);
    } else {
      Widget icon;
      if (isLoading) {
        icon = const SizedBox.square(dimension: 24, child: CircularProgressIndicator(strokeWidth: 2));
      } else {
        icon = const Icon(Icons.logout);
      }
      child = IconButton(icon: icon, onPressed: onPressed);
    }
    return child;
  }
}
