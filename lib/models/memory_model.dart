class MemoryModel {
  DateTime dateTime;
  String title;
  String subtitle;

  MemoryModel({
    required this.dateTime,
    required this.title,
    required this.subtitle,
  });

  factory MemoryModel.fromMap(Map<String, dynamic> data) {
    return MemoryModel(
      dateTime: DateTime.parse(data['date']),
      title: data['title'] as String,
      subtitle: data['subtitle'] as String,
    );
  }
}
