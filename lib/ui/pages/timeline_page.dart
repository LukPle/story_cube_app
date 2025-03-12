import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:story_cube_app/constants/strings.dart';
import 'package:story_cube_app/models/memory_model.dart';
import 'package:story_cube_app/ui/widgets/app_scaffold.dart';
import 'package:story_cube_app/ui/widgets/empty_state_placeholder.dart';

import '../../bloc/bloc.dart';
import '../../constants/sizes.dart';
import '../widgets/timeline_entry.dart';

class TimelinePage extends StatelessWidget {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoryCubeCubit, StoryCubeState>(
      bloc: BlocProvider.of<StoryCubeCubit>(context),
      builder: (context, state) {
        if (state is StoryCubeLoadSuccess) {
          final List<MemoryModel> memories = state.memories;
          memories.sort((a, b) => b.dateTime.compareTo(a.dateTime));

          Map<String, List<MemoryModel>> groupedMemories = {};
          for (var memory in memories) {
            String monthYear = DateFormat('MMMM yyyy').format(memory.dateTime);
            groupedMemories.putIfAbsent(monthYear, () => []).add(memory);
          }

          return AppScaffold(
            pageTitle: AppStrings.timelinePageTitle,
            children: [
              const SizedBox(height: AppSizes.size_16),
              Column(
                children: groupedMemories.isNotEmpty
                    ? List.generate(groupedMemories.length, (index) {
                        final entry = groupedMemories.entries.elementAt(index);
                        return TimelineEntry(
                          monthYear: entry.key,
                          memories: entry.value,
                          isLastEntry: index == groupedMemories.length - 1,
                        );
                      })
                    : [const EmptyStatePlaceholder(message: AppStrings.timelineEmptyState)],
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
