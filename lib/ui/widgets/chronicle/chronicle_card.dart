import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/radius_sizes.dart';
import '../../../constants/sizes.dart';
import 'chronicle_header.dart';

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
    return Container(
      height: AppSizes.size_96,
      padding: const EdgeInsets.all(AppSizes.size_16),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light ? AppColors.lightCard : AppColors.darkCard,
        borderRadius: BorderRadius.circular(AppRadiusSizes.medium),
      ),
      child: ChronicleHeader(title: title, entryCount: entryCount),
    );
  }
}
