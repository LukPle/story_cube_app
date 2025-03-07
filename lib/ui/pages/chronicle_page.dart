import 'package:flutter/material.dart';
import 'package:story_cube_app/models/person_model.dart';
import 'package:story_cube_app/ui/widgets/chronicle/profile_section.dart';

import '../../constants/sizes.dart';
import '../widgets/app_scaffold.dart';
import '../widgets/chronicle/chronicle_card.dart';
import '../widgets/chronicle/friends_family_section.dart';

class ChroniclePage extends StatelessWidget {
  const ChroniclePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<PersonModel> persons = [
      PersonModel(firstName: 'Klaus', lastName: 'Eberhardt', relationship: 'Big Boss'),
      PersonModel(firstName: 'Amiin', lastName: 'Najjar', relationship: 'Jugendliebe'),
      PersonModel(firstName: 'Peppa', lastName: 'Wutz', relationship: 'Schwester'),
    ];

    return AppScaffold(
      pageTitle: 'Chronicle',
      children: [
        const SizedBox(height: AppSizes.size_16),
        const ProfileSection(),
        const SizedBox(height: AppSizes.size_16),
        FriendsFamilySection(persons: persons),
        const SizedBox(height: AppSizes.size_16),
        const Row(
          children: [
            Expanded(child: ChronicleCard(title: 'Growing Up', entryCount: 7)),
            SizedBox(width: AppSizes.size_16),
            Expanded(child: ChronicleCard(title: 'Past Jobs', entryCount: 2)),
          ],
        ),
        const SizedBox(height: AppSizes.size_16),
        const Row(
          children: [
            Expanded(child: ChronicleCard(title: 'Adventures', entryCount: 16)),
            SizedBox(width: AppSizes.size_16),
            Expanded(child: ChronicleCard(title: 'Food', entryCount: 8)),
          ],
        ),
        const SizedBox(height: AppSizes.size_64),
      ],
    );
  }
}
