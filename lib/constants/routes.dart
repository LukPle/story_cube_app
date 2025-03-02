import 'package:flutter/material.dart';
import 'package:story_cube_app/tab_selector.dart';

const String tabSelector = 'tab_selector';

Route<dynamic> generateRoute(RouteSettings destination) {
  switch (destination.name) {
    case tabSelector:
      return MaterialPageRoute(
        settings: destination,
        builder: (context) => TabSelector(),
      );
    default:
      throw ('Route ${destination.name} does not exist');
  }
}
