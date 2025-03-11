import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:story_cube_app/models/memory_model.dart';
import 'package:story_cube_app/models/person_model.dart';
import 'package:story_cube_app/ui/widgets/app_scaffold.dart';
import 'package:story_cube_app/ui/widgets/memories/memory_card_placeholder.dart';
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
          color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
        ),
      ),
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSizes.size_16),
              chronicleDetailsData.category == ChronicleDetailsCategory.persons
                  ? Wrap(
                      spacing: AppSizes.size_8,
                      runSpacing: AppSizes.size_8,
                      children: chronicleDetailsData.data
                          .cast<PersonModel>()
                          .map((person) => PersonCard(person: person))
                          .toList(),
                    )
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
                      : const MemoryCardPlaceholder(),
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
