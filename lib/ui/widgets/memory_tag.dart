import 'package:flutter/material.dart';
import 'package:story_cube_app/constants/radius_sizes.dart';
import 'package:story_cube_app/constants/text_styles.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class MemoryTag extends StatelessWidget {
  const MemoryTag({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light ? AppColors.lightCard : AppColors.darkCard,
        borderRadius: BorderRadius.circular(AppRadiusSizes.large),
        border: Border.all(width: 1, color: Colors.grey)
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.size_8,
        vertical: AppSizes.size_4,
      ),
      child: Text(text, style: AppTextStyles.bodySmall),
    );
  }
}
