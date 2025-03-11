import 'package:story_cube_app/models/event_model.dart';
import 'package:story_cube_app/models/person_model.dart';
import 'package:story_cube_app/models/memory_model.dart';

final List<MemoryModel> memoryData = [
  MemoryModel(
    dateTime: DateTime.now(),
    createdAt: DateTime.now().subtract(const Duration(hours: 2)),
    title: "The Day I Met Your Grandfather",
    subtitle: "A love story",
    summary:
    "Your grandmother tells this story about the day she met your grandfather at a local fair. She says he was the most handsome man in the crowd!",
    text:
    "It was a warm summer afternoon when your grandmother first saw your grandfather. She was at the local fair with her friends, enjoying the rides and the smell of fresh popcorn in the air. As she turned the corner near the carousel, she noticed a young man laughing with his friends. Their eyes met, and for a brief moment, time seemed to stand still. She would later tell you that she just knew in that moment—he was the one. They spent the entire evening talking, sharing stories, and enjoying the fair together. And that was the beginning of a love story that would last a lifetime.",
    locations: ['Local Fair', 'Town Square'],
    tags: ['love', 'first meeting', 'family'],
    persons: [
      PersonModel(firstName: "Jane", lastName: "Smith", relationship: "Grandmother"),
      PersonModel(firstName: "John", lastName: "Doe", relationship: "Grandfather"),
    ],
    tone: 'Friendly',
    quotes: ["I love this guy", "He was so handsome"],
    events: [
      EventModel(date: DateTime.now(), description: "Local Fair"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
  MemoryModel(
    dateTime: DateTime.now().subtract(const Duration(days: 3)),
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    title: "Our Family Road Trip",
    subtitle: "An unforgettable adventure",
    summary: "The trip we took down south was filled with laughter, flat tires, and a million memories.",
    text:
    "It was a road trip like no other. We packed up the car early in the morning, everyone excited for the adventure ahead. The first few hours were filled with music and laughter, but as we got deeper into our journey, things started to get interesting. A flat tire in the middle of nowhere, a sudden rainstorm that forced us to take shelter in a tiny roadside diner, and a spontaneous detour that led us to the most breathtaking sunset we'd ever seen. Despite the unexpected turns, it was these moments that made the trip unforgettable.",
    locations: ['Southern Route', 'Grand Canyon', 'Desert Campground'],
    tags: ['family', 'adventure', 'road trip'],
    persons: [
      PersonModel(firstName: "Mary", lastName: "Doe", relationship: "Mother"),
      PersonModel(firstName: "James", lastName: "Doe", relationship: "Father"),
      PersonModel(firstName: "Jack", lastName: "Doe", relationship: "Son"),
    ],
    tone: 'Exciting',
    quotes: ["This is going to be amazing!", "We’ll laugh about this later."],
    events: [
      EventModel(date: DateTime.now().subtract(const Duration(days: 3)), description: "Flat tire on the road"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
  MemoryModel(
    dateTime: DateTime.now().subtract(const Duration(days: 28)),
    createdAt: DateTime.now().subtract(const Duration(days: 20)),
    title: "The Christmas We Will Never Forget",
    subtitle: "A Christmas miracle",
    summary: "That year, we had snow in the middle of a warm winter! Your Uncle Charlie had to shovel the walkway.",
    text:
    "It was a Christmas miracle. The weather forecast had predicted another dry, mild winter, but when we woke up that morning, the entire neighborhood was covered in a thick layer of snow. Uncle Charlie, bundled up in three layers, grabbed the shovel and started clearing a path while we all watched from the window, sipping hot cocoa. That evening, we built a snowman, had a snowball fight, and shared one of the most magical Christmas nights ever. It was a holiday we would talk about for years to come.",
    locations: ['Home', 'Living Room'],
    tags: ['Christmas', 'family', 'snow'],
    persons: [
      PersonModel(firstName: "Emma", lastName: "Taylor", relationship: "Aunt"),
      PersonModel(firstName: "Charlie", lastName: "Taylor", relationship: "Uncle"),
      PersonModel(firstName: "Sarah", lastName: "Taylor", relationship: "Mother"),
    ],
    tone: 'Nostalgic',
    quotes: ["I’ve never seen anything like this!", "Charlie, get the shovel!"],
    events: [
      EventModel(date: DateTime.now().subtract(const Duration(days: 28)), description: "Unexpected snowfall"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
  MemoryModel(
    dateTime: DateTime.now().subtract(const Duration(days: 35)),
    createdAt: DateTime.now().subtract(const Duration(days: 30)),
    title: "The Summer Picnic Disaster",
    subtitle: "A lesson in preparation",
    summary: "We decided to go on a picnic, but no one thought to pack the sunscreen!",
    text:
    "It started as a perfect day for a picnic. The sun was shining, the food was packed, and everyone was in high spirits. But as the afternoon wore on, we realized something—we had forgotten sunscreen. By the time we finished eating, half of us were already sunburnt. Then, to make matters worse, a gust of wind knocked over our picnic blanket, sending sandwiches flying. Despite the minor disasters, we laughed the entire way home. It was a day full of mishaps, but also one of our most memorable summer outings.",
    locations: ['Riverbank', 'Park'],
    tags: ['picnic', 'family', 'adventure'],
    persons: [
      PersonModel(firstName: "Tom", lastName: "Davis", relationship: "Father"),
      PersonModel(firstName: "Lily", lastName: "Davis", relationship: "Daughter"),
    ],
    tone: 'Humorous',
    quotes: ["Did anyone bring sunscreen?", "Oops..."],
    events: [
      EventModel(date: DateTime.now().subtract(const Duration(days: 35)), description: "Sunburn at the picnic"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
  MemoryModel(
    dateTime: DateTime.now().subtract(const Duration(days: 193)),
    createdAt: DateTime.now().subtract(const Duration(days: 190)),
    title: "The Day I Bought My First Car",
    subtitle: "The freedom of the open road",
    summary: "I saved up for months to buy my first car. It wasn’t much, but it was mine!",
    text:
    "It wasn’t much, but it was mine. After months of saving every penny, I finally had enough to buy my first car. It was an old, slightly rusty sedan, but to me, it was freedom. I remember driving it home, windows down, music blasting, feeling on top of the world. That car took me on road trips, late-night drives, and countless adventures. It was more than just a car—it was the beginning of independence.",
    locations: ['Car Dealership', 'Town'],
    tags: ['independence', 'first car', 'adventure'],
    persons: [
      PersonModel(firstName: "Alice", lastName: "Brown", relationship: "Mother"),
    ],
    tone: 'Excited',
    quotes: ["It’s mine!", "I’m finally free to go anywhere."],
    events: [
      EventModel(date: DateTime.now().subtract(const Duration(days: 193)), description: "Bought first car"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
];
