import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:story_cube_app/constants/colors.dart';
import 'package:story_cube_app/models/memory_model.dart';
import 'package:story_cube_app/models/person_model.dart';
import 'package:story_cube_app/ui/widgets/app_scaffold.dart';
import 'package:story_cube_app/ui/widgets/empty_state_placeholder.dart';
import 'package:story_cube_app/ui/widgets/person_card.dart';

import '../../constants/icon_sizes.dart';
import '../../constants/sizes.dart';
import '../widgets/memories/memory_card.dart';

class ChronicleDetailsPage extends StatelessWidget {
  const ChronicleDetailsPage({
    super.key,
    required this.chronicleDetailsData,
  });

  final ChronicleDetailsData chronicleDetailsData;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      pageTitle: chronicleDetailsData.title,
      leading: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Icon(
          PhosphorIcons.caretLeft(),
          size: AppIconSizes.medium,
          color: ThemedColor.getColor(context, light: Colors.black, dark: Colors.white),
        ),
      ),
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSizes.size_16),
              chronicleDetailsData.category == ChronicleDetailsCategory.persons
                  ? chronicleDetailsData.data.cast<PersonModel>().isNotEmpty
                      ? Wrap(
                          spacing: AppSizes.size_8,
                          runSpacing: AppSizes.size_8,
                          children: chronicleDetailsData.data
                              .cast<PersonModel>()
                              .map((person) => PersonCard(person: person))
                              .toList(),
                        )
                      : const EmptyStatePlaceholder(message: 'Persons featured in memories will appear here')
                  : chronicleDetailsData.data.cast<MemoryModel>().isNotEmpty
                      ? Column(
                          children: chronicleDetailsData.data
                              .cast<MemoryModel>()
                              .map((memory) => Padding(
                                    padding: const EdgeInsets.only(bottom: AppSizes.size_8),
                                    child: MemoryCard(memory: memory),
                                  ))
                              .toList(),
                        )
                      : const EmptyStatePlaceholder(message: 'Memories that fit this category will appear here'),
              const SizedBox(height: AppSizes.size_64),
            ],
          ),
        ),
      ],
    );
  }
}

enum ChronicleDetailsCategory {
  persons,
  memories,
}

class ChronicleDetailsData {
  final ChronicleDetailsCategory category;
  final String title;
  final List<dynamic> data;

  ChronicleDetailsData({
    required this.category,
    required this.title,
    required this.data,
  });
}
