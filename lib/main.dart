import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/config/create_text_theme.dart';
import 'app/config/theme.dart';
import 'app/core/network/supabase.dart';
import 'app/features/game/presentation/screens/game_screen.dart';
import 'app/features/login/presentation/screens/login_screen.dart';
import 'app/features/user/presentation/controllers/current_user_controller.dart';
import 'app/features/user/presentation/widgets/current_user_listener.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final providerContainer = ProviderContainer();
  await providerContainer.read(supabaseClientProvider).init();
  await providerContainer.read(currentUserControllerProvider.notifier).init();
  runApp(UncontrolledProviderScope(container: providerContainer, child: const WhoSusApp()));
}

class WhoSusApp extends StatelessWidget {
  const WhoSusApp({super.key});

  @override
  Widget build(BuildContext context) {
    //   	1.	Press Start 2P - This font is very retro and reminiscent of early video games.
    // 2.	VT323 - A pixelated font that gives a strong retro gaming vibe.
    // 3.	Orbitron - A futuristic and angular font suitable for sci-fi themed games.
    // 4.	Bungee - A bold and playful font that stands out, great for titles.
    // 5.	Share Tech Mono - A monospaced font that works well for a techy or futuristic look.
    // 6.	Big Shoulders Display - A condensed and impactful font that can be great for headings or logos.

    TextTheme textTheme = createTextTheme(context, 'Orbitron', 'Bungee');
    MaterialTheme theme = MaterialTheme(textTheme);

    return DynamicColorBuilder(builder: (lightDynamic, darkDynamic) {
      return MaterialApp(
        title: 'Who Sus',
        theme: theme.light(),
        darkTheme: theme.dark(),
        home: CurrentUserListener(
          onAuthenticated: (_) => const GameScreen(),
          onUnauthenticated: (_) => const LoginScreen(),
        ),
      );
    });
  }
}
