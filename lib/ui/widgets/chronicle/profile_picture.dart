import 'dart:io';

import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:story_cube_app/constants/colors.dart';
import 'package:story_cube_app/constants/icon_sizes.dart';

import '../../../constants/sizes.dart';

enum ProfilePictureSize {
  medium,
  large,
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
    this.size = ProfilePictureSize.medium,
    this.image,
    this.hasBackground = true
  });

  final ProfilePictureSize size;
  final File? image;
  final bool hasBackground;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size == ProfilePictureSize.medium ? AppSizes.size_64 : AppSizes.size_96,
      width: size == ProfilePictureSize.medium ? AppSizes.size_64 : AppSizes.size_96,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: hasBackground ? ThemedColor.cardColor(context) : Colors.transparent,
        border: Border.all(
          color: Theme.of(context).brightness == Brightness.light ? Colors.black54 : Colors.white70,
          width: 0.5,
        ),
      ),
      child: ClipOval(
        child: image != null
            ? Image.file(
                image!,
                fit: BoxFit.cover,
              )
            : Icon(
                PhosphorIcons.user(),
                size: AppIconSizes.large,
                color: ThemedColor.primaryColor(context),
              ),
      ),
    );
  }
}
