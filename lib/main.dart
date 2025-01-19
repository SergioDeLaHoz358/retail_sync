import 'package:flutter/material.dart';
import 'package:retail_sync/utils/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode
          .system, // ThemeMode.system is the default. Detectable by the system.
      darkTheme: TAppTheme.darkTheme,
      theme: TAppTheme.lightTheme,
    );
  }
}
