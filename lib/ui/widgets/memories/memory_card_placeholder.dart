import 'package:flutter/material.dart';
import 'package:story_cube_app/constants/radius_sizes.dart';
import 'package:story_cube_app/constants/sizes.dart';
import 'package:story_cube_app/constants/text_styles.dart';
import 'package:story_cube_app/ui/widgets/dashed_container.dart';

class MemoryCardPlaceholder extends StatelessWidget {
  const MemoryCardPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return DashedBorderContainer(
      width: double.infinity,
      dashSpace: AppSizes.size_8,
      dashWidth: AppSizes.size_8,
      padding: const EdgeInsets.all(AppSizes.size_24),
      borderRadius: AppRadiusSizes.medium,
      borderColor: Colors.grey.withOpacity(0.7),
      child: Text(
        'Memories that fit this category will appear here',
        style: AppTextStyles.body.copyWith(fontWeight: FontWeight.w500).copyWith(
              color: Theme.of(context).brightness == Brightness.light ? Colors.black54 : Colors.white70,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
