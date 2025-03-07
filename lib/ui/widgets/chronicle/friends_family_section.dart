import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/radius_sizes.dart';
import '../../../constants/sizes.dart';
import '../../../models/person_model.dart';
import '../person_card.dart';
import 'chronicle_header.dart';

class FriendsFamilySection extends StatelessWidget {
  const FriendsFamilySection({
    super.key,
    required this.persons,
  });

  final List<PersonModel> persons;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? AppSizes.size_16 : 0,
                  right: index == persons.length - 1 ? AppSizes.size_16 : 0,
                ),
                child: PersonCard(person: persons[index]),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: AppSizes.size_8),
            ),
          ),
          const SizedBox(height: AppSizes.size_16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.size_16),
            child: ChronicleHeader(title: 'Friends and Family', entryCount: persons.length),
          ),
        ],
      ),
    );
  }
}
