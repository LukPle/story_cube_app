import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:story_cube_app/models/chronicle_profile_model.dart';
import 'package:story_cube_app/ui/widgets/chronicle/profile_picture.dart';
import 'package:story_cube_app/ui/widgets/dashed_container.dart';

import '../../../constants/colors.dart';
import '../../../constants/icon_sizes.dart';
import '../../../constants/radius_sizes.dart';
import '../../../constants/sizes.dart';
import '../../../constants/strings.dart';
import '../../../constants/text_styles.dart';
import '../../../constants/routes.dart' as routes;

class ProfileSectionPlaceholder extends StatelessWidget {
  const ProfileSectionPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(routes.editProfile, arguments: ChronicleProfileModel()),
      child: DashedBorderContainer(
        dashSpace: AppSizes.size_8,
        dashWidth: AppSizes.size_8,
        padding: const EdgeInsets.all(AppSizes.size_16),
        borderRadius: AppRadiusSizes.medium,
        borderColor: Colors.grey.withOpacity(0.7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ProfilePicture(),
            const SizedBox(width: AppSizes.size_16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.profileHeaderEmptyState,
                    style: AppTextStyles.bodyLarge.copyWith(
                        color: Theme.of(context).brightness == Brightness.light ? Colors.black54 : Colors.white70,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSizes.size_2),
                  Text(
                    AppStrings.profileDescriptionEmptyState,
                    style: AppTextStyles.bodySmall.copyWith(
                      color: ThemedColor.getColor(context, light: Colors.black54, dark: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              PhosphorIcons.plus(),
              size: AppIconSizes.medium,
              color: ThemedColor.primaryColor(context),
            ),
            const SizedBox(width: AppSizes.size_2),
          ],
        ),
      ),
    );
  }
}
