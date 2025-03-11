import 'package:flutter/material.dart';
import 'package:story_cube_app/constants/colors.dart';
import 'package:story_cube_app/constants/radius_sizes.dart';
import 'package:story_cube_app/constants/sizes.dart';
import 'package:story_cube_app/constants/text_styles.dart';
import 'package:story_cube_app/ui/widgets/dashed_container.dart';

class EmptyStatePlaceholder extends StatelessWidget {
  const EmptyStatePlaceholder({
    super.key,
    required this.message,
  });

  final String message;

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
        message,
        style: AppTextStyles.body.copyWith(fontWeight: FontWeight.w500).copyWith(
              color: ThemedColor.getColor(context, light: Colors.black54, dark: Colors.white70),
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
