import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_cube_app/app.dart';

import 'bloc/story_cube_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    BlocProvider(
      create: (context) => StoryCubeCubit()..loadAppData(),
      child: const StoryCubeApp(),
    ),
  );
}
