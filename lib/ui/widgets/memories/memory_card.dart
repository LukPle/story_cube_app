import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:story_cube_app/constants/radius_sizes.dart';
import 'package:story_cube_app/constants/sizes.dart';
import 'package:story_cube_app/constants/text_styles.dart';
import 'package:story_cube_app/models/memory_model.dart';
import 'package:story_cube_app/ui/widgets/memories/memory_tag.dart';
import '../../../constants/routes.dart' as routes;

import '../../../constants/colors.dart';

class MemoryCard extends StatelessWidget {
  const MemoryCard({
    super.key,
    required this.memory,
  });

  final MemoryModel memory;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(routes.memoryDetails, arguments: memory),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(AppSizes.size_16),
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.light ? AppColors.lightCard : AppColors.darkCard,
          borderRadius: BorderRadius.circular(AppRadiusSizes.medium),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Recorded on ${DateFormat('dd.MM.yyyy').format(memory.createdAt)}',
                  style: AppTextStyles.caption.copyWith(
                    color: Theme.of(context).brightness == Brightness.light
                        ? AppColors.accentColorLight
                        : AppColors.accentColorDark,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (memory.createdAt.isAfter(DateTime.now().subtract(const Duration(days: 5)))) ...[
                  const SizedBox(width: AppSizes.size_8),
                  MemoryTag(
                    text: 'New',
                    backgroundColor: Theme.of(context).brightness == Brightness.light
                        ? AppColors.accentColorLight
                        : AppColors.accentColorDark,
                    textColor: Theme.of(context).brightness == Brightness.light
                        ? AppColors.accentColorDark
                        : AppColors.accentColorLight,
                  ),
                ],
              ],
            ),
            const SizedBox(height: AppSizes.size_6),
            Text(
              memory.title,
              style: AppTextStyles.body.copyWith(fontWeight: FontWeight.w500),
              maxLines: 1,
            ),
            const SizedBox(height: AppSizes.size_4),
            Text(memory.subtitle, style: AppTextStyles.bodySmall, maxLines: 1),
          ],
        ),
      ),
    );
  }
}
