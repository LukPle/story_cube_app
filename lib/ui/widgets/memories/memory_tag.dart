import 'package:flutter/material.dart';

import '../../../constants/radius_sizes.dart';
import '../../../constants/sizes.dart';
import '../../../constants/text_styles.dart';

enum MemoryTagSize {
  medium,
  large,
}

class MemoryTag extends StatelessWidget {
  const MemoryTag({
    super.key,
    this.size = MemoryTagSize.medium,
    required this.text,
    required this.backgroundColor,
    this.textColor,
  });

  final MemoryTagSize size;
  final String text;
  final Color backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: size == MemoryTagSize.medium ? AppSizes.size_6 : AppSizes.size_8,
        vertical: AppSizes.size_2,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(AppRadiusSizes.small),
        ),
        color: backgroundColor,
      ),
      child: Text(
        text,
        style: size == MemoryTagSize.medium
            ? AppTextStyles.caption.copyWith(
                color: textColor == null ? AppTextStyles.caption.color : textColor!,
                fontWeight: FontWeight.w700,
              )
            : AppTextStyles.bodySmall.copyWith(
                color: textColor == null ? AppTextStyles.caption.color : textColor!, fontWeight: FontWeight.w600),
      ),
    );
  }
}
