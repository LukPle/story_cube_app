import 'package:story_cube_app/models/person_model.dart';
import 'package:story_cube_app/models/memory_model.dart';

final List<MemoryModel> memoryData = [
  MemoryModel(
    dateTime: DateTime.now(),
    title: "The Day I Met Your Grandfather",
    subtitle: "A love story",
    summary: "Your grandmother tells this story about the day she met your grandfather at a local fair. She says he was the most handsome man in the crowd!",
    text: "It was a warm summer afternoon when your grandmother first saw your grandfather. She had just arrived at the local fair with her friends, enjoying the excitement of the rides, the delicious smells of fair food, and the music playing in the background. Suddenly, she spotted a young man standing in the crowd. He was tall, with dark hair and an easy smile that made him stand out from the rest. Your grandmother was drawn to him immediately. Their eyes met across the carnival grounds, and there was an instant connection. Your grandfather walked over, introduced himself, and from that moment on, they were inseparable. They spent the entire afternoon together, laughing, talking, and enjoying the fair. That was the start of a beautiful love story that would last a lifetime.",
    locations: ['Local Fair', 'Town Square'],
    tags: ['love', 'first meeting', 'family'],
    persons: [
      PersonModel(
        firstName: "Jane",
        lastName: "Smith",
        relationship: "Grandmother",
      ),
      PersonModel(
        firstName: "John",
        lastName: "Doe",
        relationship: "Grandfather",
      ),
    ],
  ),
  MemoryModel(
    dateTime: DateTime.now().subtract(const Duration(days: 3)),
    title: "Our Family Road Trip",
    subtitle: "An unforgettable adventure",
    summary: "The trip we took down south was filled with laughter, flat tires, and a million memories. Grandpa drove the whole way, singing along to the radio.",
    text: "It was a road trip like no other. Our family packed into the car, heading south for a long-awaited vacation. Grandpa, as usual, was in the driver’s seat, singing along to the songs on the radio. It felt like the whole world was out there for us to explore. Along the way, we had a series of small adventures. We got a flat tire, which caused a few hours of delay, but that didn’t stop us from laughing. We stopped at small towns, ate diner food, and took photos in front of roadside attractions. The highlight of the trip was when we reached the Grand Canyon — it was even more breathtaking than we had imagined. At night, we camped under the stars in the desert, sharing stories and looking up at the sky. Despite the bumps along the way, it was one of the most memorable trips our family ever took.",
    locations: ['Southern Route', 'Grand Canyon', 'Desert Campground'],
    tags: ['family', 'adventure', 'road trip'],
    persons: [
      PersonModel(
        firstName: "Mary",
        lastName: "Doe",
        relationship: "Mother",
      ),
      PersonModel(
        firstName: "James",
        lastName: "Doe",
        relationship: "Father",
      ),
      PersonModel(
        firstName: "Jack",
        lastName: "Doe",
        relationship: "Son",
      ),
    ],
  ),
  MemoryModel(
    dateTime: DateTime.now().subtract(const Duration(days: 28)),
    title: "The Christmas We Will Never Forget",
    subtitle: "A Christmas miracle",
    summary: "That year, we had snow in the middle of a warm winter! Your Uncle Charlie had to shovel the walkway by hand, but it was worth it for the family photo we took in the snow.",
    text: "It was a Christmas miracle. In the middle of a warm winter, snow started falling from the sky, blanketing everything in a soft, white layer. We couldn’t believe our eyes! Your Uncle Charlie, always ready to help, went outside and shoveled the walkway by hand while the rest of us stayed inside, warming up by the fire. Once the snow had settled, we bundled up in our winter coats and hats, and ventured outside for a family photo. It was the perfect moment — a scene that looked straight out of a holiday card. We stood together, laughing and smiling in the snow, making memories that we would carry with us forever.",
    locations: ['Home', 'Living Room'],
    tags: ['Christmas', 'family', 'snow'],
    persons: [
      PersonModel(
        firstName: "Emma",
        lastName: "Taylor",
        relationship: "Aunt",
      ),
      PersonModel(
        firstName: "Charlie",
        lastName: "Taylor",
        relationship: "Uncle",
      ),
      PersonModel(
        firstName: "Sarah",
        lastName: "Taylor",
        relationship: "Mother",
      ),
    ],
  ),
  MemoryModel(
    dateTime: DateTime.now().subtract(const Duration(days: 35)),
    title: "The Summer Picnic Disaster",
    subtitle: "A lesson in preparation",
    summary: "We decided to go on a picnic, but no one thought to pack the sunscreen! We ended up spending the afternoon hiding in the shade, but it’s a story we laugh about every year.",
    text: "It started as a perfect day for a picnic. The weather was beautiful, and we packed everything we needed: sandwiches, snacks, drinks, and even a frisbee for some fun. However, we overlooked one crucial detail — sunscreen! By noon, we were all feeling the effects of the sun. No one had thought to bring sunscreen, and we ended up with sunburns all over our arms and faces. It was a painful lesson in preparation, but we made the best of it. We spent the afternoon hiding in the shade, telling stories, and trying to cool off. To this day, it’s a story we laugh about every year — the infamous summer picnic disaster.",
    locations: ['Riverbank', 'Park'],
    tags: ['picnic', 'family', 'adventure'],
    persons: [
      PersonModel(
        firstName: "Tom",
        lastName: "Davis",
        relationship: "Father",
      ),
      PersonModel(
        firstName: "Lily",
        lastName: "Davis",
        relationship: "Daughter",
      ),
    ],
  ),
  MemoryModel(
    dateTime: DateTime.now().subtract(const Duration(days: 189)),
    title: "The Wedding Day",
    subtitle: "A special day",
    summary: "Grandma always says she’s never seen anything more beautiful than the day she married Grandpa. She still remembers walking down the aisle with tears in her eyes.",
    text: "The day Grandma married Grandpa was the most beautiful day she ever experienced. She tells us that as she walked down the aisle, she could hardly believe her eyes — Grandpa was standing there, waiting for her, looking more handsome than ever. There were tears in her eyes as she walked toward him, knowing that this moment would change their lives forever. They exchanged vows and rings, promising to love each other for a lifetime. It was the beginning of an incredible journey together, one that would be filled with laughter, love, and family. It was a day filled with emotion, and Grandma says that she still remembers the way Grandpa looked at her when she walked down that aisle. She has never seen anything more beautiful.",
    locations: ['Church', 'Reception Hall'],
    tags: ['wedding', 'love', 'family'],
    persons: [
      PersonModel(
        firstName: "Eliza",
        lastName: "Johnson",
        relationship: "Grandmother",
      ),
      PersonModel(
        firstName: "George",
        lastName: "Johnson",
        relationship: "Grandfather",
      ),
    ],
  ),
  MemoryModel(
    dateTime: DateTime.now().subtract(const Duration(days: 193)),
    title: "The Day I Bought My First Car",
    subtitle: "The freedom of the open road",
    summary: "I saved up for months to buy my first car. It wasn’t much, but it was mine! I drove it around town with pride, and every time I stopped, I felt like I had conquered the world.",
    text: "It wasn’t much, but it was mine. After months of saving every penny I could, I finally had enough to buy my first car. I remember walking into the dealership, nervous but excited, and driving off with a sense of accomplishment. The car wasn’t fancy, but it was mine, and I felt like the king of the world every time I got behind the wheel. I would drive around town, just enjoying the freedom and independence that came with it. Every stop I made felt like a victory. It was the beginning of a new chapter in my life, and I’ll never forget the feeling of driving my first car.",
    locations: ['Car Dealership', 'Town'],
    tags: ['independence', 'first car', 'adventure'],
    persons: [
      PersonModel(
        firstName: "Alice",
        lastName: "Brown",
        relationship: "Mother",
      ),
    ],
  ),
  MemoryModel(
    dateTime: DateTime.now().subtract(const Duration(days: 267)),
    title: "Our Family's First House",
    subtitle: "Building memories together",
    summary: "The first house we bought as a family was so small, but we turned it into a home. We had our first Christmas there, and it’s still my favorite place in the world.",
    text: "When we bought our first house as a family, it was small, but it was ours. We spent months getting it ready, painting the walls, buying furniture, and making it feel like home. It wasn’t much, but every corner of it was filled with love and memories. The first Christmas in that house was magical. We had a small tree in the corner of the living room, but the atmosphere was filled with warmth and joy.",
    locations: ['New Home'],
    tags: ['family', 'home', 'first house'],
    persons: [
      PersonModel(
        firstName: "Susan",
        lastName: "Martinez",
        relationship: "Mother",
      ),
      PersonModel(
        firstName: "William",
        lastName: "Martinez",
        relationship: "Father",
      ),
    ],
  ),
];
