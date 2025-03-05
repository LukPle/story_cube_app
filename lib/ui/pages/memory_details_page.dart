import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:story_cube_app/constants/radius_sizes.dart';
import 'package:story_cube_app/constants/text_styles.dart';
import 'package:story_cube_app/models/memory_model.dart';
import 'package:story_cube_app/ui/widgets/audio_player_section.dart';
import 'package:story_cube_app/ui/widgets/person_card.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import '../widgets/memory_tag.dart';

class MemoryDetailsPage extends StatelessWidget {
  const MemoryDetailsPage({
    super.key,
    required this.memory,
  });

  final MemoryModel memory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.light
            ? AppColors.secondaryColorLight
            : AppColors.secondaryColorDark,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(AppSizes.size_16),
                decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.light
                        ? AppColors.secondaryColorLight
                        : AppColors.secondaryColorDark,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(AppRadiusSizes.large),
                      bottomRight: Radius.circular(AppRadiusSizes.large),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(memory.title, style: AppTextStyles.h1),
                    const SizedBox(height: AppSizes.size_16),
                    Text(memory.summary, style: AppTextStyles.bodyLarge),
                    const SizedBox(height: AppSizes.size_16),
                    Row(
                      children: [
                        Icon(PhosphorIcons.calendar()),
                        const SizedBox(width: AppSizes.size_8),
                        Flexible(
                          child: Text(
                            DateFormat('MMMM yyyy').format(memory.dateTime),
                            style: AppTextStyles.bodySmall,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.size_8),
                    Row(
                      children: [
                        Icon(PhosphorIcons.mapPinSimpleArea()),
                        const SizedBox(width: AppSizes.size_8),
                        Flexible(
                          child: Text(
                            memory.locations.length > 1
                                ? '${memory.locations.sublist(0, memory.locations.length - 1).join(', ')} and ${memory.locations.last}'
                                : memory.locations.first,
                            style: AppTextStyles.bodySmall,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.size_24),
                    Wrap(
                      spacing: AppSizes.size_4,
                      runSpacing: AppSizes.size_4,
                      children: memory.persons.map((person) {
                        return PersonCard(person: person);
                      }).toList(),
                    ),
                    const SizedBox(height: AppSizes.size_8),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.size_16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: AppSizes.size_32),
                    const AudioPlayerSection(audioUrl: 'lib/assets/sound_example.mp3'),
                    const SizedBox(height: AppSizes.size_32),
                    const Text('Themes', style: AppTextStyles.body),
                    const SizedBox(height: AppSizes.size_8),
                    Wrap(
                      spacing: AppSizes.size_4,
                      runSpacing: AppSizes.size_4,
                      children: memory.tags.map((tag) {
                        return MemoryTag(text: tag);
                      }).toList(),
                    ),
                    const SizedBox(height: AppSizes.size_16),
                    Text(memory.text, style: AppTextStyles.body),
                    const SizedBox(height: AppSizes.size_64),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
