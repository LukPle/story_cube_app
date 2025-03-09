import 'package:flutter/material.dart';
import 'constants/themes.dart';
import 'constants/routes.dart' as routes;

class StoryCubeApp extends StatelessWidget {
  const StoryCubeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      onGenerateRoute: routes.generateRoute,
      initialRoute: routes.tabSelector,
    );
  }
}
