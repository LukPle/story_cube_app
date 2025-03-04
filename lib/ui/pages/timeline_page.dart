import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:story_cube_app/models/memory_model.dart';
import 'package:story_cube_app/ui/widgets/memory_card.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import '../../constants/text_styles.dart';

class TimelinePage extends StatelessWidget {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MemoryModel> memories = [
      MemoryModel(dateTime: DateTime.now(), title: "Memory 1", subtitle: "Subtitle"),
      MemoryModel(dateTime: DateTime.now().subtract(const Duration(days: 3)), title: "Memory 2", subtitle: "Subtitle"),
      MemoryModel(dateTime: DateTime.now().subtract(const Duration(days: 28)), title: "Memory 3", subtitle: "Subtitle"),
      MemoryModel(dateTime: DateTime.now().subtract(const Duration(days: 35)), title: "Memory 4", subtitle: "Subtitle"),
      MemoryModel(
          dateTime: DateTime.now().subtract(const Duration(days: 189)), title: "Memory 5", subtitle: "Subtitle"),
      MemoryModel(
          dateTime: DateTime.now().subtract(const Duration(days: 193)), title: "Memory 6", subtitle: "Subtitle"),
      MemoryModel(
          dateTime: DateTime.now().subtract(const Duration(days: 267)), title: "Memory 7", subtitle: "Subtitle"),
    ];

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
                const SizedBox(height: AppSizes.size_16),
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
                            Text(
                              monthYear,
                              style: AppTextStyles.bodyLarge,
                            ),
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
