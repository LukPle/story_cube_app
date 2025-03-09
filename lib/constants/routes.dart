import 'package:flutter/material.dart';
import 'package:story_cube_app/models/chronicle_profile_model.dart';
import 'package:story_cube_app/models/memory_model.dart';
import 'package:story_cube_app/tab_selector.dart';
import 'package:story_cube_app/ui/pages/edit_profile_page.dart';
import 'package:story_cube_app/ui/pages/memory_details_page.dart';

const String tabSelector = 'tab_selector';
const String memoryDetails = 'memory_details';
const String editProfile = 'edit_profile';

Route<dynamic> generateRoute(RouteSettings destination) {
  switch (destination.name) {
    case tabSelector:
      return MaterialPageRoute(
        settings: destination,
        builder: (context) => TabSelector(),
      );
    case memoryDetails:
      final memory = destination.arguments as MemoryModel;
      return MaterialPageRoute(
        settings: destination,
        builder: (context) => MemoryDetailsPage(memory: memory),
      );
    case editProfile:
      final chronicleProfile = destination.arguments as ChronicleProfileModel;
      return MaterialPageRoute(
        settings: destination,
        builder: (context) => EditProfilePage(chronicleProfile: chronicleProfile),
      );
    default:
      throw ('Route ${destination.name} does not exist');
  }
}
