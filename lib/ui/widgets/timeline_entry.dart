import 'package:flutter/material.dart';
import 'package:story_cube_app/models/memory_model.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import '../../constants/text_styles.dart';
import 'memory_card.dart';

class TimelineEntry extends StatelessWidget {
  final String monthYear;
  final List<MemoryModel> memories;
  final bool isLastEntry;

  const TimelineEntry({
    super.key,
    required this.monthYear,
    required this.memories,
    required this.isLastEntry,
  });

  @override
  Widget build(BuildContext context) {
    Color primaryColor =
        Theme.of(context).brightness == Brightness.light ? AppColors.primaryColorLight : AppColors.primaryColorDark;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: AppSizes.size_24,
              height: AppSizes.size_24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
            ),
            if (!isLastEntry)
              Container(
                width: 6,
                height: AppSizes.size_8 + (memories.length * 117.5) + AppSizes.size_16,
                color: primaryColor,
              ),
          ],
        ),
        const SizedBox(width: AppSizes.size_16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(monthYear,
                  style: AppTextStyles.bodyLarge.copyWith(
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(height: AppSizes.size_8),
              Column(
                children: memories
                    .map((memory) => Padding(
                          padding: const EdgeInsets.only(bottom: AppSizes.size_8),
                          child: MemoryCard(memory: memory),
                        ))
                    .toList(),
              ),
              const SizedBox(height: AppSizes.size_16),
            ],
          ),
        ),
      ],
    );
  }
}
