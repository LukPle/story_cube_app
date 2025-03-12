import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_cube_app/constants/strings.dart';
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

  List<PersonModel> _getUniquePersons(List<MemoryModel> memories) {
    final Set<String> seenPersonIds = {};
    return memories.expand((memory) => memory.persons).where((person) {
      final personId = '${person.firstName}-${person.lastName}-${person.relationship}';
      return seenPersonIds.add(personId);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> growingUpTags = ['childhood', 'school', 'growing up'];
    final List<String> pastJobTags = ['work', 'university', 'career'];
    final List<String> adventuresTags = ['vacation', 'travel', 'adventure', 'exploration'];
    final List<String> foodTags = ['recipe', 'food'];

    return BlocBuilder<StoryCubeCubit, StoryCubeState>(
      bloc: BlocProvider.of<StoryCubeCubit>(context),
      builder: (context, state) {
        if (state is StoryCubeLoadSuccess) {
          final chronicleProfile = state.chronicleProfile;
          final List<MemoryModel> memories = state.memories;

          print(memories);

          return AppScaffold(
            pageTitle: AppStrings.chroniclePageTitle,
            children: [
              const SizedBox(height: AppSizes.size_16),
              (chronicleProfile.name != null &&
                      chronicleProfile.relationship != null &&
                      chronicleProfile.birthday != null)
                  ? ProfileSection(chronicleProfile: chronicleProfile)
                  : const ProfileSectionPlaceholder(),
              const SizedBox(height: AppSizes.size_16),
              FriendsFamilySection(persons: _getUniquePersons(memories)),
              const SizedBox(height: AppSizes.size_16),
              Row(
                children: [
                  Expanded(
                    child: ChronicleCard(
                      title: AppStrings.growingUpCategory,
                      memories:
                          memories.where((memory) => memory.tags.any((tag) => growingUpTags.contains(tag))).toList(),
                    ),
                  ),
                  const SizedBox(width: AppSizes.size_16),
                  Expanded(
                    child: ChronicleCard(
                      title: AppStrings.pastJobsCategory,
                      memories:
                          memories.where((memory) => memory.tags.any((tag) => pastJobTags.contains(tag))).toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.size_16),
              Row(
                children: [
                  Expanded(
                    child: ChronicleCard(
                      title: AppStrings.adventuresCategory,
                      memories:
                          memories.where((memory) => memory.tags.any((tag) => adventuresTags.contains(tag))).toList(),
                    ),
                  ),
                  const SizedBox(width: AppSizes.size_16),
                  Expanded(
                    child: ChronicleCard(
                      title: AppStrings.foodCategory,
                      memories: memories.where((memory) => memory.tags.any((tag) => foodTags.contains(tag))).toList(),
                    ),
                  ),
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
