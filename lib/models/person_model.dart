class PersonModel {
  final String firstName;
  final String lastName;
  final String relationship;

  PersonModel({
    required this.firstName,
    required this.lastName,
    required this.relationship,
  });

  factory PersonModel.fromMap(Map<String, dynamic> data) {
    return PersonModel(
      firstName: data['first_name'] as String,
      lastName: data['last_name'] as String,
      relationship: data['relationship'] as String,
    );
  }
}
