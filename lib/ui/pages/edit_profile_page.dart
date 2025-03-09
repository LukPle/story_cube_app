import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:story_cube_app/constants/radius_sizes.dart';
import 'package:story_cube_app/constants/text_styles.dart';
import 'package:story_cube_app/data/local_storage.dart';
import 'package:story_cube_app/models/chronicle_profile_model.dart';
import 'package:story_cube_app/ui/widgets/app_scaffold.dart';
import 'package:story_cube_app/ui/widgets/chronicle/profile_picture.dart';

import '../../bloc/story_cube_cubit.dart';
import '../../constants/colors.dart';
import '../../constants/icon_sizes.dart';
import '../../constants/sizes.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({
    super.key,
    required this.chronicleProfile,
  });

  final ChronicleProfileModel chronicleProfile;

  @override
  EditProfilePageState createState() => EditProfilePageState();
}

class EditProfilePageState extends State<EditProfilePage> {
  late final ChronicleProfileModel chronicleProfile;
  final ValueNotifier<File?> _imageNotifier = ValueNotifier<File?>(null);
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _relationshipController = TextEditingController();
  final ValueNotifier<DateTime?> _selectedDateNotifier = ValueNotifier<DateTime?>(null);
  final ValueNotifier<bool> _isSaveButtonEnabled = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    chronicleProfile = widget.chronicleProfile;

    _imageNotifier.value = chronicleProfile.profileImage;
    _nameController.text = chronicleProfile.name ?? '';
    _relationshipController.text = chronicleProfile.relationship ?? '';
    _selectedDateNotifier.value = chronicleProfile.birthday;

    _imageNotifier.addListener(_updateButtonState);
    _nameController.addListener(_updateButtonState);
    _relationshipController.addListener(_updateButtonState);
    _selectedDateNotifier.addListener(_updateButtonState);
  }

  void _updateButtonState() {
    bool isButtonEnabled = _imageNotifier.value != chronicleProfile.profileImage ||
        _nameController.text.isNotEmpty &&
            _relationshipController.text.isNotEmpty &&
            _selectedDateNotifier.value != null;

    _isSaveButtonEnabled.value = isButtonEnabled;
  }

  void _saveProfile() {
    final localStorage = LocalStorage.instance;
    final storyAppCubit = context.read<StoryCubeCubit>();

    final chronicleProfile = ChronicleProfileModel(
      profileImage: _imageNotifier.value,
      name: _nameController.value.text,
      relationship: _relationshipController.value.text,
      birthday: _selectedDateNotifier.value,
    );

    localStorage.saveChronicleProfile(chronicleProfile);
    storyAppCubit.updateChronicleProfile(chronicleProfile);

    Navigator.of(context).pop();
  }

  Future<void> _onProfilePictureTap() async {
    if (_imageNotifier.value == null) {
      await _pickImage();
    } else {
      _showImageOptions();
    }
  }

  void _showImageOptions() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.size_16),
            child: ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: Icon(PhosphorIcons.imagesSquare(), size: AppIconSizes.medium),
                  title: const Text('Change Picture', style: AppTextStyles.body),
                  onTap: () async {
                    Navigator.pop(context);
                    await _pickImage();
                  },
                ),
                ListTile(
                  leading: Icon(PhosphorIcons.trash(), size: AppIconSizes.medium, color: AppColors.error),
                  title: Text('Delete Picture', style: AppTextStyles.body.copyWith(color: AppColors.error)),
                  onTap: () {
                    _imageNotifier.value = null;
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      _imageNotifier.value = File(pickedFile.path);
    }
  }

  void _pickDate(BuildContext context) async {
    final DateTime? selectedDate = await showModalBottomSheet<DateTime>(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.only(
            top: AppSizes.size_8,
            left: AppSizes.size_16,
            right: AppSizes.size_16,
            bottom: AppSizes.size_64,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppRadiusSizes.medium),
              topRight: Radius.circular(AppRadiusSizes.medium),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pop(context, _selectedDateNotifier.value);
                  },
                  child: Text(
                    'Save',
                    style: AppTextStyles.body
                        .copyWith(color: ThemedColor.accentColor(context), fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(height: AppSizes.size_16),
              SizedBox(
                height: AppSizes.size_96 * 2,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: _selectedDateNotifier.value ?? DateTime.now(),
                  onDateTimeChanged: (DateTime newDate) {
                    _selectedDateNotifier.value = newDate;
                  },
                ),
              ),
            ],
          ),
        );
      },
    );

    if (selectedDate != null) {
      _selectedDateNotifier.value = selectedDate;
    }
  }

  @override
  void dispose() {
    _imageNotifier.dispose();
    _nameController.dispose();
    _relationshipController.dispose();
    _isSaveButtonEnabled.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      pageTitle: 'Edit Profile',
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
              const SizedBox(height: AppSizes.size_32),
              GestureDetector(
                onTap: () => _onProfilePictureTap(),
                child: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      ValueListenableBuilder<File?>(
                        valueListenable: _imageNotifier,
                        builder: (context, image, _) {
                          return ProfilePicture(
                            size: ProfilePictureSize.large,
                            image: image,
                          );
                        },
                      ),
                      Positioned(
                        bottom: -10,
                        right: -10,
                        child: Container(
                          padding: const EdgeInsets.all(AppSizes.size_8),
                          decoration: BoxDecoration(
                            color: ThemedColor.primaryColor(context),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            PhosphorIcons.pencilSimpleLine(),
                            size: AppIconSizes.small,
                            color: ThemedColor.getColor(context, light: Colors.white, dark: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: AppSizes.size_32),
              Text(
                'Name',
                style: AppTextStyles.bodySmall.copyWith(
                  color: ThemedColor.primaryColor(context),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: AppSizes.size_4),
              CupertinoTextField(
                controller: _nameController,
                placeholder: 'Enter the name',
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.size_16, vertical: AppSizes.size_12),
                style: AppTextStyles.body.copyWith(
                  color: ThemedColor.getColor(
                    context,
                    light: Colors.black,
                    dark: Colors.white,
                  ),
                ),
                placeholderStyle: AppTextStyles.body.copyWith(color: CupertinoColors.placeholderText),
                decoration: BoxDecoration(
                  border: Border.all(color: ThemedColor.primaryColor(context).withOpacity(0.7)),
                  borderRadius: BorderRadius.circular(AppRadiusSizes.medium),
                ),
              ),
              const SizedBox(height: AppSizes.size_16),
              Text(
                'Relationship',
                style: AppTextStyles.bodySmall.copyWith(
                  color: ThemedColor.primaryColor(context),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: AppSizes.size_4),
              CupertinoTextField(
                controller: _relationshipController,
                placeholder: 'Enter the realationship',
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.size_16, vertical: AppSizes.size_12),
                style: AppTextStyles.body.copyWith(
                  color: ThemedColor.getColor(
                    context,
                    light: Colors.black,
                    dark: Colors.white,
                  ),
                ),
                placeholderStyle: AppTextStyles.body.copyWith(color: CupertinoColors.placeholderText),
                decoration: BoxDecoration(
                  border: Border.all(color: ThemedColor.primaryColor(context).withOpacity(0.7)),
                  borderRadius: BorderRadius.circular(AppRadiusSizes.medium),
                ),
              ),
              const SizedBox(height: AppSizes.size_16),
              Text(
                'Birthday',
                style: AppTextStyles.bodySmall.copyWith(
                  color: ThemedColor.primaryColor(context),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: AppSizes.size_4),
              ValueListenableBuilder<DateTime?>(
                valueListenable: _selectedDateNotifier,
                builder: (context, selectedDate, child) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: AppSizes.size_12, vertical: AppSizes.size_2),
                    decoration: BoxDecoration(
                      border: Border.all(color: ThemedColor.primaryColor(context).withOpacity(0.7)),
                      borderRadius: BorderRadius.circular(AppRadiusSizes.medium),
                    ),
                    child: CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => _pickDate(context),
                      child: Row(
                        children: [
                          Icon(
                            PhosphorIcons.calendar(),
                            size: AppIconSizes.small,
                            color: selectedDate == null
                                ? CupertinoColors.placeholderText
                                : ThemedColor.getColor(
                                    context,
                                    light: Colors.black,
                                    dark: Colors.white,
                                  ),
                          ),
                          const SizedBox(width: AppSizes.size_6),
                          Text(
                            selectedDate == null ? 'Select Date' : DateFormat('dd.MM.yyyy').format(selectedDate),
                            style: selectedDate == null
                                ? AppTextStyles.body.copyWith(color: CupertinoColors.placeholderText)
                                : AppTextStyles.body.copyWith(
                                    color: ThemedColor.getColor(
                                      context,
                                      light: Colors.black,
                                      dark: Colors.white,
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: AppSizes.size_32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.size_16),
                child: Text(
                  'This data is used to personalize the Chronicles Page and only stored locally on device.',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.caption.copyWith(
                    color: ThemedColor.primaryColor(context).withOpacity(0.7),
                  ),
                ),
              ),
              const SizedBox(height: AppSizes.size_32),
              SizedBox(
                width: double.infinity,
                child: ValueListenableBuilder<bool>(
                  valueListenable: _isSaveButtonEnabled,
                  builder: (context, isEnabled, child) {
                    return CupertinoButton(
                      color: ThemedColor.primaryColor(context),
                      disabledColor: ThemedColor.primaryColor(context).withOpacity(0.3),
                      borderRadius: BorderRadius.circular(AppRadiusSizes.medium),
                      onPressed: isEnabled ? () => _saveProfile() : null,
                      child: const Text('Save Changes', style: AppTextStyles.body),
                    );
                  },
                ),
              ),
              const SizedBox(height: AppSizes.size_32),
            ],
          ),
        ),
      ],
    );
  }
}
