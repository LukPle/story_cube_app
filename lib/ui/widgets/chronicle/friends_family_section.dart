import 'package:flutter/material.dart';
import 'package:story_cube_app/ui/pages/chronicle_details_page.dart';

import '../../../constants/strings.dart';
import 'chronicle_header.dart';
import '../person_card.dart';
import '../../../constants/colors.dart';
import '../../../constants/radius_sizes.dart';
import '../../../constants/sizes.dart';
import '../../../models/person_model.dart';
import '../../../constants/routes.dart' as routes;

class FriendsFamilySection extends StatelessWidget {
  const FriendsFamilySection({
    super.key,
    required this.persons,
  });

  final List<PersonModel> persons;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(
        routes.chronicleDetails,
        arguments: ChronicleDetailsData(
          category: ChronicleDetailsCategory.persons,
          title: AppStrings.friendsFamilyCategory,
          data: persons,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.size_16),
        decoration: BoxDecoration(
          color: ThemedColor.cardColor(context),
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
                  child: PersonCard(
                    person: persons[index],
                    backgroundColor: ThemedColor.backgroundColor(context),
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(width: AppSizes.size_8),
              ),
            ),
            const SizedBox(height: AppSizes.size_16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.size_16),
              child: ChronicleHeader(
                title: AppStrings.friendsFamilyCategory,
                itemCount: persons.length,
                category: ChronicleDetailsCategory.persons,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
