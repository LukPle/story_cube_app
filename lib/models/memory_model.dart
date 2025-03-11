import 'person_model.dart';
import 'event_model.dart';

class MemoryModel {
  final DateTime dateTime;
  final String title;
  final String subtitle;
  final String summary;
  final String text;
  final String audioUrl;
  final List<String> tags;
  final List<String> locations;
  final List<PersonModel> persons;
  final String tone;
  final List<String> quotes;
  final List<EventModel> events;
  final DateTime createdAt;

  MemoryModel({
    required this.dateTime,
    required this.title,
    required this.subtitle,
    required this.summary,
    required this.text,
    required this.audioUrl,
    required this.tags,
    required this.locations,
    required this.persons,
    required this.tone,
    required this.quotes,
    required this.events,
    required this.createdAt,
  });

  factory MemoryModel.fromMap(Map<String, dynamic> data, {required String audioUrl}) {
    return MemoryModel(
      dateTime: DateTime.parse(data['date']),
      title: data['title'] as String,
      subtitle: data['subtitle'] as String,
      summary: data['summary'] as String,
      text: data['text'] as String,
      audioUrl: audioUrl,
      tags: List<String>.from(data['tags'] ?? []),
      locations: List<String>.from(data['locations'] ?? []),
      persons: (data['persons'] as List<dynamic>?)?.map((personData) {
        return PersonModel.fromMap(personData);
      }).toList() ?? [],
      tone: data['tone'] as String,
      quotes: List<String>.from(data['quotes'] ?? []),
      events: (data['events'] as List<dynamic>?)?.map((eventData) {
        return EventModel.fromMap(eventData);
      }).toList() ?? [],
      createdAt: DateTime.parse(data['created_at']),
    );
  }
}
