import 'package:flutter/material.dart';
import 'package:story_cube_app/ui/widgets/profile_section.dart';

import '../../constants/sizes.dart';
import '../widgets/app_scaffold.dart';

class ChroniclePage extends StatelessWidget {
  const ChroniclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      pageTitle: 'Chronicle',
      children: [
        const SizedBox(height: AppSizes.size_16),
        const ProfileSection(),
        const SizedBox(height: AppSizes.size_64),
      ],
    );
  }
}
