import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:story_cube_app/constants/icon_sizes.dart';
import 'package:story_cube_app/constants/text_styles.dart';
import 'package:story_cube_app/models/person_model.dart';
import 'package:story_cube_app/ui/widgets/person_card.dart';
import 'package:story_cube_app/ui/widgets/profile_section.dart';

import '../../constants/colors.dart';
import '../../constants/radius_sizes.dart';
import '../../constants/sizes.dart';
import '../widgets/app_scaffold.dart';

class ChroniclePage extends StatelessWidget {
  const ChroniclePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<PersonModel> persons = [
      PersonModel(
        firstName: 'Klaus',
        lastName: 'Eberhardt',
        relationship: 'Big Boss',
      ),
      PersonModel(
        firstName: 'Amiin',
        lastName: 'Najjar',
        relationship: 'Jugendliebe',
      ),
      PersonModel(
        firstName: 'Peppa',
        lastName: 'Wutz',
        relationship: 'Schwester',
      ),
    ];

    return AppScaffold(
      pageTitle: 'Chronicle',
      children: [
        const SizedBox(height: AppSizes.size_16),
        const ProfileSection(),
        const SizedBox(height: AppSizes.size_16),
        Container(
          padding: const EdgeInsets.symmetric(vertical: AppSizes.size_16),
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.light ? AppColors.lightCard : AppColors.darkCard,
            borderRadius: BorderRadius.circular(AppRadiusSizes.medium),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppSizes.size_64,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: persons.length,
                  itemBuilder: (BuildContext context, int index) => Padding(
                    padding: index == 0
                        ? const EdgeInsets.only(left: AppSizes.size_16)
                        : index == persons.length - 1
                            ? const EdgeInsets.only(right: AppSizes.size_16)
                            : EdgeInsets.zero,
                    child: PersonCard(person: persons[index]),
                  ),
                  separatorBuilder: (BuildContext context, int index) => const SizedBox(width: AppSizes.size_8),
                ),
              ),
              const SizedBox(height: AppSizes.size_16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.size_16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Friends and Family',
                          style: AppTextStyles.body.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '4 Entries',
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
                      color: Theme.of(context).brightness == Brightness.light
                          ? AppColors.primaryColorLight
                          : AppColors.primaryColorDark,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSizes.size_16),
        Row(
          children: [
            Expanded(
              child: Container(
                height: AppSizes.size_96,
                padding: const EdgeInsets.all(AppSizes.size_16),
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.light ? AppColors.lightCard : AppColors.darkCard,
                  borderRadius: BorderRadius.circular(AppRadiusSizes.medium),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Growing Up',
                          style: AppTextStyles.body.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '7 Entries',
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
                      color: Theme.of(context).brightness == Brightness.light
                          ? AppColors.primaryColorLight
                          : AppColors.primaryColorDark,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(width: AppSizes.size_16),
            Expanded(
              child: Container(
                height: AppSizes.size_96,
                padding: const EdgeInsets.all(AppSizes.size_16),
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.light ? AppColors.lightCard : AppColors.darkCard,
                  borderRadius: BorderRadius.circular(AppRadiusSizes.medium),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Past Jobs',
                          style: AppTextStyles.body.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '2 Entries',
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
                      color: Theme.of(context).brightness == Brightness.light
                          ? AppColors.primaryColorLight
                          : AppColors.primaryColorDark,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSizes.size_16),
        Row(
          children: [
            Expanded(
              child: Container(
                height: AppSizes.size_96,
                padding: const EdgeInsets.all(AppSizes.size_16),
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.light ? AppColors.lightCard : AppColors.darkCard,
                  borderRadius: BorderRadius.circular(AppRadiusSizes.medium),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Adventures',
                          style: AppTextStyles.body.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '16 Entries',
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
                      color: Theme.of(context).brightness == Brightness.light
                          ? AppColors.primaryColorLight
                          : AppColors.primaryColorDark,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(width: AppSizes.size_16),
            Expanded(
              child: Container(
                height: AppSizes.size_96,
                padding: const EdgeInsets.all(AppSizes.size_16),
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.light ? AppColors.lightCard : AppColors.darkCard,
                  borderRadius: BorderRadius.circular(AppRadiusSizes.medium),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Food',
                          style: AppTextStyles.body.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '8 Entries',
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
                      color: Theme.of(context).brightness == Brightness.light
                          ? AppColors.primaryColorLight
                          : AppColors.primaryColorDark,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSizes.size_64),
      ],
    );
  }
}
