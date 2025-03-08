import 'dart:io';

class ChronicleProfileModel {
  final File? profileImage;
  final String? name;
  final String? relationship;
  final DateTime? birthday;

  ChronicleProfileModel({
    this.profileImage,
    this.name,
    this.relationship,
    this.birthday,
  });
}
