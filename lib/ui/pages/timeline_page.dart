import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:story_cube_app/models/example_data.dart';
import 'package:story_cube_app/models/memory_model.dart';

import '../../constants/sizes.dart';
import '../../constants/text_styles.dart';
import '../widgets/timeline_entry.dart';

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
                  children: List.generate(groupedMemories.length, (index) {
                    final entry = groupedMemories.entries.elementAt(index);

                    return TimelineEntry(
                      monthYear: entry.key,
                      memories: entry.value,
                      isLastEntry: index == groupedMemories.length - 1,
                    );
                  }),
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
