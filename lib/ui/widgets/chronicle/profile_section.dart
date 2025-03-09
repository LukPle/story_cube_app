import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:story_cube_app/models/chronicle_profile_model.dart';
import 'package:story_cube_app/ui/widgets/chronicle/profile_picture.dart';

import '../../../constants/colors.dart';
import '../../../constants/icon_sizes.dart';
import '../../../constants/radius_sizes.dart';
import '../../../constants/sizes.dart';
import '../../../constants/text_styles.dart';
import '../../../constants/routes.dart' as routes;

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
    required this.chronicleProfile,
  });

  final ChronicleProfileModel chronicleProfile;

  int _calculateAge(DateTime birthDate) {
    final today = DateTime.now();
    int age = today.year - birthDate.year;

    if (today.month < birthDate.month || (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }

    return age;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(routes.editProfile, arguments: chronicleProfile),
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
            ProfilePicture(image: chronicleProfile.profileImage),
            const SizedBox(width: AppSizes.size_16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chronicleProfile.name!,
                    style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSizes.size_2),
                  Text(
                    '${chronicleProfile.relationship} • ${_calculateAge(chronicleProfile.birthday!).toString()} years old',
                    style: AppTextStyles.bodySmall.copyWith(
                      color: ThemedColor.getColor(context, light: Colors.black54, dark: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              PhosphorIcons.pencilSimpleLine(),
              size: AppIconSizes.small,
              color: ThemedColor.primaryColor(context),
            ),
            const SizedBox(width: AppSizes.size_2),
          ],
        ),
      ),
    );
  }
}
