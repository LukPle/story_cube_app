import 'dart:convert';
import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  LocalStorage._();
  static final LocalStorage instance = LocalStorage._();

  static const String _imageKey = 'profile_image';
  static const String _nameKey = 'profile_name';
  static const String _relationshipKey = 'profile_relationship';
  static const String _birthdayKey = 'profile_birthday';

  Future<void> saveProfileImage(File imageFile) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<int> imageBytes = await imageFile.readAsBytes();
    String base64String = base64Encode(imageBytes);
    await prefs.setString(_imageKey, base64String);
  }

  Future<File?> loadProfileImage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? base64String = prefs.getString(_imageKey);
    if (base64String == null) return null;

    List<int> imageBytes = base64Decode(base64String);
    File tempFile = File('${Directory.systemTemp.path}/profile_image.png');
    await tempFile.writeAsBytes(imageBytes);
    return tempFile;
  }

  Future<void> deleteProfileImage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_imageKey);
  }

  Future<void> saveName(String name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_nameKey, name);
  }

  Future<String?> loadName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_nameKey);
  }

  Future<void> deleteName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_nameKey);
  }

  Future<void> saveRelationship(String relationship) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_relationshipKey, relationship);
  }

  Future<String?> loadRelationship() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_relationshipKey);
  }

  Future<void> deleteRelationship() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_relationshipKey);
  }

  Future<void> saveBirthday(DateTime birthday) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_birthdayKey, birthday.toIso8601String());
  }

  Future<DateTime?> loadBirthday() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? birthdayString = prefs.getString(_birthdayKey);
    if (birthdayString == null) return null;
    return DateTime.parse(birthdayString);
  }

  Future<void> deleteBirthday() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_birthdayKey);
  }
}
