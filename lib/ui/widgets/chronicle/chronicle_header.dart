import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:story_cube_app/ui/pages/pages.dart';

import '../../../constants/colors.dart';
import '../../../constants/icon_sizes.dart';
import '../../../constants/sizes.dart';
import '../../../constants/strings.dart';
import '../../../constants/text_styles.dart';

class ChronicleHeader extends StatelessWidget {
  const ChronicleHeader({
    super.key,
    required this.title,
    required this.itemCount,
    required this.category,
  });

  final String title;
  final int itemCount;
  final ChronicleDetailsCategory category;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: AppTextStyles.body.copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              category == ChronicleDetailsCategory.persons
                  ? '$itemCount ${AppStrings.persons}'
                  : '$itemCount ${AppStrings.memories}',
              style: AppTextStyles.bodySmall.copyWith(
                color: Theme.of(context).brightness == Brightness.light ? Colors.black54 : Colors.white70,
              ),
            ),
          ],
        ),
        const SizedBox(width: AppSizes.size_6),
        Icon(
          PhosphorIcons.caretCircleRight(),
          size: AppIconSizes.small,
          color: ThemedColor.primaryColor(context),
        ),
      ],
    );
  }
}
