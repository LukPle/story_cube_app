import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:story_cube_app/models/example_data.dart';
import 'package:story_cube_app/models/memory_model.dart';
import 'package:story_cube_app/ui/widgets/memory_card.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import '../../constants/text_styles.dart';

class TimelinePage extends StatelessWidget {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MemoryModel> memories = memoryData;

    memories.sort((a, b) => b.dateTime.compareTo(a.dateTime));

    Map<String, List<MemoryModel>> groupedMemories = {};
    for (var memory in memories) {
      String monthYear = DateFormat('MMMM yyyy').format(memory.dateTime);
      groupedMemories.putIfAbsent(monthYear, () => []).add(memory);
    }

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.size_16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Timeline', style: AppTextStyles.h1),
                const SizedBox(height: AppSizes.size_32),
                Column(
                  children: groupedMemories.entries.map((entry) {
                    String monthYear = entry.key;
                    List<MemoryModel> monthlyMemories = entry.value;

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: AppSizes.size_32,
                              height: AppSizes.size_32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).brightness == Brightness.light
                                    ? AppColors.secondaryColorLight
                                    : AppColors.secondaryColorDark,
                              ),
                            ),
                            const SizedBox(width: AppSizes.size_8),
                            Text(monthYear, style: AppTextStyles.h3),
                          ],
                        ),
                        const SizedBox(height: AppSizes.size_8),
                        Column(
                          children: monthlyMemories
                              .map((memory) => Padding(
                                    padding: const EdgeInsets.only(bottom: AppSizes.size_8),
                                    child: MemoryCard(memory: memory),
                                  ))
                              .toList(),
                        ),
                        const SizedBox(height: AppSizes.size_16),
                      ],
                    );
                  }).toList(),
                ),
                const SizedBox(height: AppSizes.size_64),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
