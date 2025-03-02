import 'package:flutter/material.dart';
import 'package:story_cube_app/ui/pages/home_page.dart';

import 'constants/themes.dart';

class StoryCubeApp extends StatelessWidget {
  const StoryCubeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: const HomePage(),
    );
  }
}
