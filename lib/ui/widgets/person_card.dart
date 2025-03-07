import 'package:flutter/material.dart';
import 'package:story_cube_app/constants/radius_sizes.dart';
import 'package:story_cube_app/constants/text_styles.dart';
import 'package:story_cube_app/models/person_model.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({
    super.key,
    required this.person,
  });

  final PersonModel person;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ThemedColor.cardColor(context),
          borderRadius: BorderRadius.circular(AppRadiusSizes.medium),
          border: Border.all(width: 1, color: Colors.grey)),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.size_12,
        vertical: AppSizes.size_8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${person.firstName} ${person.lastName}', style: AppTextStyles.bodySmall),
          const SizedBox(height: AppSizes.size_2),
          Text(
            person.relationship,
            style: AppTextStyles.caption.copyWith(
              color: AppTextStyles.caption.color?.withOpacity(0.5) ??
                  (Theme.of(context).brightness == Brightness.light ? Colors.black54 : Colors.white60),
            ),
          ),
        ],
      ),
    );
  }
}
