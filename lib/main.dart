import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'features/auth/login_screen.dart'; // <-- import your register screen

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = FThemes.zinc.dark;

    return MaterialApp(
      supportedLocales: FLocalizations.supportedLocales,
      localizationsDelegates: const [...FLocalizations.localizationsDelegates],
      theme: theme.toApproximateMaterialTheme(),
      builder: (_, child) => FAnimatedTheme(data: theme, child: child!),

      // Set the register screen as the first screen
      home: const LoginScreen(),
    );
  }
}
