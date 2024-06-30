import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../user/presentation/widgets/logout_button.dart';

class GameScreen extends ConsumerWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game'),
        actions: const [
          LogoutButton.icon(),
        ],
      ),
      body: const Center(child: Text('Game Screen')),
    );
  }
}
