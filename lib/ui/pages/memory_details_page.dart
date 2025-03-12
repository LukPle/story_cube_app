import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:story_cube_app/constants/icon_sizes.dart';
import 'package:story_cube_app/constants/radius_sizes.dart';
import 'package:story_cube_app/constants/strings.dart';
import 'package:story_cube_app/constants/text_styles.dart';
import 'package:story_cube_app/models/memory_model.dart';
import 'package:story_cube_app/ui/widgets/app_scaffold.dart';
import 'package:story_cube_app/ui/widgets/list_fading_shader.dart';
import 'package:story_cube_app/ui/widgets/memories/audio_player_section.dart';
import 'package:story_cube_app/ui/widgets/person_card.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import '../widgets/memories/memory_tag.dart';
import '../widgets/memories/memory_chip.dart';

class MemoryDetailsPage extends StatelessWidget {
  const MemoryDetailsPage({
    super.key,
    required this.memory,
  });

  final MemoryModel memory;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      pageTitle: memory.title,
      leading: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Icon(
          PhosphorIcons.caretLeft(),
          size: AppIconSizes.medium,
          color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
        ),
      ),
      backgroundColor: ThemedColor.secondaryColor(context),
      hasPadding: false,
      fadingDirection: FadingDirection.bottom,
      extendBodyBehindAppBar: true,
      removeLargeTitle: true,
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(AppSizes.size_16),
                decoration: BoxDecoration(
                    color: ThemedColor.secondaryColor(context),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(AppRadiusSizes.large),
                      bottomRight: Radius.circular(AppRadiusSizes.large),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: AppTextStyles.h1.copyWith(
                          color: Theme.of(context).textTheme.headlineLarge?.color ?? Colors.black,
                        ),
                        children: [
                          TextSpan(text: memory.title),
                          if (memory.createdAt.isAfter(DateTime.now().subtract(const Duration(days: 5))))
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              baseline: TextBaseline.alphabetic,
                              child: Padding(
                                padding: const EdgeInsets.only(left: AppSizes.size_12),
                                child: MemoryTag(
                                  text: AppStrings.newTag,
                                  size: MemoryTagSize.large,
                                  backgroundColor: ThemedColor.accentColor(context),
                                  textColor: Theme.of(context).brightness == Brightness.light
                                      ? AppColors.accentColorDark
                                      : AppColors.accentColorLight,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
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
                    AudioPlayerSection(audioUrl: memory.audioUrl),
                    const SizedBox(height: AppSizes.size_32),
                    Text(memory.text, style: AppTextStyles.body),
                    const SizedBox(height: AppSizes.size_8),
                    Text(
                      '${AppStrings.recordedDateInfo} ${DateFormat('dd.MM.yyyy').format(memory.createdAt)}',
                      style: AppTextStyles.caption.copyWith(
                        color: ThemedColor.accentColor(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: AppSizes.size_32),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(AppStrings.quotesHeader, style: AppTextStyles.body),
                              const SizedBox(height: AppSizes.size_8),
                              Container(
                                padding: const EdgeInsets.all(AppSizes.size_12),
                                decoration: BoxDecoration(
                                  color: ThemedColor.cardColor(context),
                                  borderRadius: BorderRadius.circular(AppRadiusSizes.medium),
                                  border: Border.all(width: 0.5, color: Colors.grey),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: memory.quotes
                                      .map(
                                        (quote) => Padding(
                                          padding: const EdgeInsets.only(bottom: AppSizes.size_6),
                                          child: Text('"$quote"', style: AppTextStyles.bodySmall),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: AppSizes.size_16),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(AppStrings.themesHeader, style: AppTextStyles.body),
                              const SizedBox(height: AppSizes.size_8),
                              Wrap(
                                spacing: AppSizes.size_4,
                                runSpacing: AppSizes.size_4,
                                children: memory.tags.map((tag) {
                                  return MemoryChip(text: tag);
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.size_96),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
