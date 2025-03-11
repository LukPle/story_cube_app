import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_cube_app/models/memory_model.dart';
import 'package:story_cube_app/models/person_model.dart';
import 'package:story_cube_app/ui/widgets/chronicle/profile_section.dart';
import 'package:story_cube_app/ui/widgets/chronicle/profile_section_placeholder.dart';

import '../../bloc/bloc.dart';
import '../../constants/sizes.dart';
import '../widgets/app_scaffold.dart';
import '../widgets/chronicle/chronicle_card.dart';
import '../widgets/chronicle/friends_family_section.dart';

class ChroniclePage extends StatelessWidget {
  const ChroniclePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<PersonModel> persons = [
      PersonModel(firstName: 'Amiin', lastName: 'Najjar', relationship: 'Jugendliebe'),
      PersonModel(firstName: 'Franz', lastName: '', relationship: 'Ehemann'),
      PersonModel(firstName: 'Klaus', lastName: 'Eberhardt', relationship: 'Big Boss'),
    ];

    return BlocBuilder<StoryCubeCubit, StoryCubeState>(
      bloc: BlocProvider.of<StoryCubeCubit>(context),
      builder: (context, state) {
        if (state is StoryCubeLoadSuccess) {
          final chronicleProfile = state.chronicleProfile;
          final List<MemoryModel> memories = state.memories;

          print(memories);

          return AppScaffold(
            pageTitle: 'Chronicle',
            children: [
              const SizedBox(height: AppSizes.size_16),
              (chronicleProfile.name != null &&
                      chronicleProfile.relationship != null &&
                      chronicleProfile.birthday != null)
                  ? ProfileSection(chronicleProfile: chronicleProfile)
                  : const ProfileSectionPlaceholder(),
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

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
