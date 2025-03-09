import 'package:flutter/material.dart';

import 'chronicle_header.dart';
import '../../../constants/colors.dart';
import '../../../constants/radius_sizes.dart';
import '../../../constants/sizes.dart';
import '../../../constants/routes.dart' as routes;

class ChronicleCard extends StatelessWidget {
  const ChronicleCard({
    super.key,
    required this.title,
    required this.entryCount,
  });

  final String title;
  final int entryCount;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(routes.chronicleDetails, arguments: title),
      child: Container(
        height: AppSizes.size_96,
        padding: const EdgeInsets.all(AppSizes.size_16),
        decoration: BoxDecoration(
          color: ThemedColor.cardColor(context),
          borderRadius: BorderRadius.circular(AppRadiusSizes.medium),
        ),
        child: ChronicleHeader(title: title, memoriesCount: entryCount),
      ),
    );
  }
}
