import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:story_cube_app/ui/widgets/app_scaffold.dart';

import '../../constants/icon_sizes.dart';
import '../../constants/sizes.dart';

class ChronicleDetailsPage extends StatelessWidget {
  const ChronicleDetailsPage({
    super.key,
    required this.category,
  });

  final String category;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      pageTitle: category,
      leading: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Icon(
          PhosphorIcons.caretLeft(),
          size: AppIconSizes.medium,
          color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
        ),
      ),
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSizes.size_16),
            ],
          ),
        ),
      ],
    );
  }
}
