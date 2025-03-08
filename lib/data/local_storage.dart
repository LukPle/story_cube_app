import 'dart:convert';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';
import '../models/chronicle_profile_model.dart';

class LocalStorage {
  LocalStorage._();
  static final LocalStorage instance = LocalStorage._();

  static const String _imageKey = 'profile_image';
  static const String _nameKey = 'profile_name';
  static const String _relationshipKey = 'profile_relationship';
  static const String _birthdayKey = 'profile_birthday';

  Future<void> saveChronicleProfile(ChronicleProfileModel profile) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (profile.profileImage != null) {
      List<int> imageBytes = await profile.profileImage!.readAsBytes();
      String base64String = base64Encode(imageBytes);
      await prefs.setString(_imageKey, base64String);
    }

    await prefs.setString(_nameKey, profile.name ?? '');
    await prefs.setString(_relationshipKey, profile.relationship ?? '');
    await prefs.setString(_birthdayKey, profile.birthday?.toIso8601String() ?? '');
  }

  Future<ChronicleProfileModel> loadChronicleProfile() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? base64Image = prefs.getString(_imageKey);
    String? name = prefs.getString(_nameKey);
    String? relationship = prefs.getString(_relationshipKey);
    String? birthdayString = prefs.getString(_birthdayKey);

    File? profileImage;
    if (base64Image != null && base64Image.isNotEmpty) {
      List<int> imageBytes = base64Decode(base64Image);
      profileImage = File('${Directory.systemTemp.path}/profile_image.png');
      await profileImage.writeAsBytes(imageBytes);
    }

    DateTime? birthday;
    if (birthdayString != null && birthdayString.isNotEmpty) {
      birthday = DateTime.tryParse(birthdayString);
    }

    return ChronicleProfileModel(
      profileImage: profileImage,
      name: name,
      relationship: relationship,
      birthday: birthday,
    );
  }

  Future<void> deleteChronicleProfile() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_imageKey);
    await prefs.remove(_nameKey);
    await prefs.remove(_relationshipKey);
    await prefs.remove(_birthdayKey);
  }
}
