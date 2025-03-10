class EventModel {
  final DateTime date;
  final String description;

  EventModel({
    required this.date,
    required this.description,
  });

  factory EventModel.fromMap(Map<String, dynamic> data) {
    return EventModel(
      date: DateTime.parse(data['first_name']),
      description: data['description'] as String,
    );
  }
}
