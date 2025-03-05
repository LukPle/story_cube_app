import 'package:story_cube_app/models/person_model.dart';
import 'package:story_cube_app/models/memory_model.dart';

final List<MemoryModel> memoryData = [
  MemoryModel(
    dateTime: DateTime.now(),
    createdAt: DateTime.now().subtract(const Duration(hours: 2)), // Recent entry
    title: "The Day I Met Your Grandfather",
    subtitle: "A love story",
    summary: "Your grandmother tells this story about the day she met your grandfather at a local fair. She says he was the most handsome man in the crowd!",
    text: "It was a warm summer afternoon when your grandmother first saw your grandfather...",
    locations: ['Local Fair', 'Town Square'],
    tags: ['love', 'first meeting', 'family'],
    persons: [
      PersonModel(firstName: "Jane", lastName: "Smith", relationship: "Grandmother"),
      PersonModel(firstName: "John", lastName: "Doe", relationship: "Grandfather"),
    ],
  ),
  MemoryModel(
    dateTime: DateTime.now().subtract(const Duration(days: 3)),
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    title: "Our Family Road Trip",
    subtitle: "An unforgettable adventure",
    summary: "The trip we took down south was filled with laughter, flat tires, and a million memories...",
    text: "It was a road trip like no other...",
    locations: ['Southern Route', 'Grand Canyon', 'Desert Campground'],
    tags: ['family', 'adventure', 'road trip'],
    persons: [
      PersonModel(firstName: "Mary", lastName: "Doe", relationship: "Mother"),
      PersonModel(firstName: "James", lastName: "Doe", relationship: "Father"),
      PersonModel(firstName: "Jack", lastName: "Doe", relationship: "Son"),
    ],
  ),
  MemoryModel(
    dateTime: DateTime.now().subtract(const Duration(days: 28)),
    createdAt: DateTime.now().subtract(const Duration(days: 20)),
    title: "The Christmas We Will Never Forget",
    subtitle: "A Christmas miracle",
    summary: "That year, we had snow in the middle of a warm winter! Your Uncle Charlie had to shovel the walkway...",
    text: "It was a Christmas miracle...",
    locations: ['Home', 'Living Room'],
    tags: ['Christmas', 'family', 'snow'],
    persons: [
      PersonModel(firstName: "Emma", lastName: "Taylor", relationship: "Aunt"),
      PersonModel(firstName: "Charlie", lastName: "Taylor", relationship: "Uncle"),
      PersonModel(firstName: "Sarah", lastName: "Taylor", relationship: "Mother"),
    ],
  ),
  MemoryModel(
    dateTime: DateTime.now().subtract(const Duration(days: 35)),
    createdAt: DateTime.now().subtract(const Duration(days: 30)),
    title: "The Summer Picnic Disaster",
    subtitle: "A lesson in preparation",
    summary: "We decided to go on a picnic, but no one thought to pack the sunscreen!...",
    text: "It started as a perfect day for a picnic...",
    locations: ['Riverbank', 'Park'],
    tags: ['picnic', 'family', 'adventure'],
    persons: [
      PersonModel(firstName: "Tom", lastName: "Davis", relationship: "Father"),
      PersonModel(firstName: "Lily", lastName: "Davis", relationship: "Daughter"),
    ],
  ),
  MemoryModel(
    dateTime: DateTime.now().subtract(const Duration(days: 189)),
    createdAt: DateTime.now().subtract(const Duration(days: 180)),
    title: "The Wedding Day",
    subtitle: "A special day",
    summary: "Grandma always says she’s never seen anything more beautiful than the day she married Grandpa...",
    text: "The day Grandma married Grandpa was the most beautiful day...",
    locations: ['Church', 'Reception Hall'],
    tags: ['wedding', 'love', 'family'],
    persons: [
      PersonModel(firstName: "Eliza", lastName: "Johnson", relationship: "Grandmother"),
      PersonModel(firstName: "George", lastName: "Johnson", relationship: "Grandfather"),
    ],
  ),
  MemoryModel(
    dateTime: DateTime.now().subtract(const Duration(days: 193)),
    createdAt: DateTime.now().subtract(const Duration(days: 190)),
    title: "The Day I Bought My First Car",
    subtitle: "The freedom of the open road",
    summary: "I saved up for months to buy my first car. It wasn’t much, but it was mine!...",
    text: "It wasn’t much, but it was mine...",
    locations: ['Car Dealership', 'Town'],
    tags: ['independence', 'first car', 'adventure'],
    persons: [
      PersonModel(firstName: "Alice", lastName: "Brown", relationship: "Mother"),
    ],
  ),
  MemoryModel(
    dateTime: DateTime.now().subtract(const Duration(days: 267)),
    createdAt: DateTime.now().subtract(const Duration(days: 260)),
    title: "Our Family's First House",
    subtitle: "Building memories together",
    summary: "The first house we bought as a family was so small, but we turned it into a home...",
    text: "When we bought our first house as a family, it was small, but it was ours...",
    locations: ['New Home'],
    tags: ['family', 'home', 'first house'],
    persons: [
      PersonModel(firstName: "Susan", lastName: "Martinez", relationship: "Mother"),
      PersonModel(firstName: "William", lastName: "Martinez", relationship: "Father"),
    ],
  ),
];
