import 'package:flutter/material.dart';

import '../../constants/sizes.dart';
import '../../constants/text_styles.dart';

class ChroniclePage extends StatelessWidget {
  const ChroniclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.size_16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Chronicle', style: AppTextStyles.h1),
                const SizedBox(height: AppSizes.size_16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
