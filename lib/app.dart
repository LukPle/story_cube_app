import 'package:flutter/material.dart';
import 'package:story_cube_app/ui/pages/home_page.dart';

class StoryCubeApp extends StatelessWidget {
  const StoryCubeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
