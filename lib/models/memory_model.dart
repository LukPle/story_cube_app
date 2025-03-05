import 'package:story_cube_app/models/person_model.dart';

class MemoryModel {
  DateTime dateTime;
  String title;
  String subtitle;
  String summary;
  String text;
  List<String> locations;
  List<String> tags;
  List<PersonModel> persons;
  DateTime createdAt;

  MemoryModel({
    required this.dateTime,
    required this.title,
    required this.subtitle,
    required this.summary,
    required this.text,
    required this.locations,
    required this.tags,
    required this.persons,
    required this.createdAt,
  });

  factory MemoryModel.fromMap(Map<String, dynamic> data) {
    return MemoryModel(
      dateTime: DateTime.parse(data['date']),
      title: data['title'] as String,
      subtitle: data['subtitle'] as String,
      summary: data['summary'] as String,
      text: data['text'] as String,
      locations: List<String>.from(data['locations'] ?? []),
      tags: List<String>.from(data['tags'] ?? []),
      persons: (data['persons'] as List<dynamic>?)?.map((personData) {
        return PersonModel.fromMap(personData);
      }).toList() ?? [],
      createdAt: DateTime.parse(data['created_at']),
    );
  }
}
