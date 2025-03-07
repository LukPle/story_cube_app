import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../constants/colors.dart';
import '../../../constants/icon_sizes.dart';
import '../../../constants/radius_sizes.dart';
import '../../../constants/sizes.dart';
import '../../../constants/text_styles.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        padding: const EdgeInsets.all(AppSizes.size_16),
        decoration: BoxDecoration(
          color: ThemedColor.cardColor(context),
          borderRadius: BorderRadius.circular(AppRadiusSizes.medium),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: AppSizes.size_64,
              width: AppSizes.size_64,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).brightness == Brightness.light ? Colors.black54 : Colors.white70,
                  width: 0.5,
                ),
              ),
              child: ClipOval(
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png?20150327203541",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: AppSizes.size_16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Monika",
                    style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSizes.size_2),
                  Text(
                    "Großmutter • 74 Jahre alt",
                    style: AppTextStyles.bodySmall.copyWith(
                      color: Theme.of(context).brightness == Brightness.light ? Colors.black54 : Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              PhosphorIcons.pencilSimpleLine(),
              size: AppIconSizes.small,
              color: ThemedColor.primaryColor(context),
            )
          ],
        ),
      ),
    );
  }
}
