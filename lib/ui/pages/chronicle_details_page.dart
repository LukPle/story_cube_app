import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:story_cube_app/ui/widgets/app_scaffold.dart';

import '../../constants/icon_sizes.dart';
import '../../constants/sizes.dart';
import '../../models/memory_model.dart';
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
              Column(
                children: chronicleDetailsData.memories
                    .map((memory) => Padding(
                          padding: const EdgeInsets.only(bottom: AppSizes.size_8),
                          child: MemoryCard(memory: memory),
                        ))
                    .toList(),
              ),
              const SizedBox(height: AppSizes.size_64),
            ],
          ),
        ),
      ],
    );
  }
}

class ChronicleDetailsData {
  final String title;
  final List<MemoryModel> memories;

  ChronicleDetailsData({
    required this.title,
    required this.memories,
  });
}
