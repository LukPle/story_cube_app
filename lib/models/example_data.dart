import 'package:story_cube_app/models/event_model.dart';
import 'package:story_cube_app/models/person_model.dart';
import 'package:story_cube_app/models/memory_model.dart';

final List<MemoryModel> memoryData = [
  MemoryModel(
    dateTime: DateTime(1957, 6, 15),
    createdAt: DateTime.now().subtract(const Duration(days: 343)),
    title: "The Day I Met Your Grandfather",
    subtitle: "A love story",
    summary:
    "Your grandmother tells this story about the day she met your grandfather at a local fair. She says he was the most handsome man in the crowd!",
    text:
    "It was a warm summer afternoon when your grandmother first saw your grandfather. She was at the local fair with her friends, enjoying the rides and the smell of fresh popcorn in the air. As she turned the corner near the carousel, she noticed a young man laughing with his friends. Their eyes met, and for a brief moment, time seemed to stand still. She would later tell you that she just knew in that moment—he was the one. They spent the entire evening talking, sharing stories, and enjoying the fair together. And that was the beginning of a love story that would last a lifetime.",
    locations: ['Local Fair', 'Town Square'],
    tags: ['love', 'first meeting', 'family'],
    persons: [
      PersonModel(firstName: "Gisela", lastName: "Schmidt", relationship: "Grandmother"),
      PersonModel(firstName: "Franz", lastName: "Schmidt", relationship: "Grandfather"),
    ],
    tone: 'Friendly',
    quotes: ["I love this guy", "He was so handsome"],
    events: [
      EventModel(date: DateTime(1957, 6, 15), description: "Local Fair"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
  MemoryModel(
    dateTime: DateTime(1985, 6, 20),
    createdAt: DateTime.now().subtract(const Duration(days: 9)),
    title: "Our Family Road Trip",
    subtitle: "An unforgettable adventure",
    summary: "The trip we took down south was filled with laughter, flat tires, and a million memories.",
    text:
    "It was a road trip like no other. We packed up the car early in the morning, everyone excited for the adventure ahead. The first few hours were filled with music and laughter, but as we got deeper into our journey, things started to get interesting. A flat tire in the middle of nowhere, a sudden rainstorm that forced us to take shelter in a tiny roadside diner, and a spontaneous detour that led us to the most breathtaking sunset we'd ever seen. Despite the unexpected turns, it was these moments that made the trip unforgettable.",
    locations: ['Southern Route', 'Grand Canyon', 'Desert Campground'],
    tags: ['travel', 'adventure', 'exploration'],
    persons: [
      PersonModel(firstName: "Luisa", lastName: "Weber", relationship: "Mother"),
      PersonModel(firstName: "Thomas", lastName: "Weber", relationship: "Father"),
      PersonModel(firstName: "Max", lastName: "Weber", relationship: "Son"),
    ],
    tone: 'Exciting',
    quotes: ["This is going to be amazing!", "We'll laugh about this later."],
    events: [
      EventModel(date: DateTime(1984, 7, 20), description: "Flat tire on the road"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
  MemoryModel(
    dateTime: DateTime(1978, 12, 24),
    createdAt: DateTime.now().subtract(const Duration(days: 20)),
    title: "The Christmas We Will Never Forget",
    subtitle: "A Christmas miracle",
    summary: "That year, we had snow in the middle of a warm winter! Your Uncle Karl had to shovel the walkway.",
    text:
    "It was a Christmas miracle. The weather forecast had predicted another dry, mild winter, but when we woke up that morning, the entire neighborhood was covered in a thick layer of snow. Uncle Karl, bundled up in three layers, grabbed the shovel and started clearing a path while we all watched from the window, sipping hot cocoa. That evening, we built a snowman, had a snowball fight, and shared one of the most magical Christmas nights ever. It was a holiday we would talk about for years to come.",
    locations: ['Home', 'Living Room'],
    tags: [],
    persons: [
      PersonModel(firstName: "Helga", lastName: "Müller", relationship: "Aunt"),
      PersonModel(firstName: "Karl", lastName: "Müller", relationship: "Uncle"),
      PersonModel(firstName: "Luisa", lastName: "Weber", relationship: "Mother"),
    ],
    tone: 'Nostalgic',
    quotes: ["I've never seen anything like this!", "Karl, get the shovel!"],
    events: [
      EventModel(date: DateTime(1978, 12, 24), description: "Unexpected snowfall"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
  MemoryModel(
    dateTime: DateTime(1985, 6, 15),
    createdAt: DateTime.now().subtract(const Duration(days: 30)),
    title: "The Summer Picnic Disaster",
    subtitle: "A lesson in preparation",
    summary: "We decided to go on a picnic, but no one thought to pack the sunscreen!",
    text:
    "It started as a perfect day for a picnic. The sun was shining, the food was packed, and everyone was in high spirits. But as the afternoon wore on, we realized something—we had forgotten sunscreen. By the time we finished eating, half of us were already sunburnt. Then, to make matters worse, a gust of wind knocked over our picnic blanket, sending sandwiches flying. Despite the minor disasters, we laughed the entire way home. It was a day full of mishaps, but also one of our most memorable summer outings.",
    locations: ['Riverbank', 'Park'],
    tags: ['food'],
    persons: [
      PersonModel(firstName: "Thomas", lastName: "Weber", relationship: "Father"),
      PersonModel(firstName: "Lena", lastName: "Weber", relationship: "Daughter"),
    ],
    tone: 'Humorous',
    quotes: ["Did anyone bring sunscreen?", "Oops..."],
    events: [
      EventModel(date: DateTime(1982, 8, 15), description: "Sunburn at the picnic"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
  MemoryModel(
    dateTime: DateTime(1975, 5, 8),
    createdAt: DateTime.now().subtract(const Duration(days: 190)),
    title: "The Day I Bought My First Car",
    subtitle: "The freedom of the open road",
    summary: "I saved up for months to buy my first car. It wasn't much, but it was mine!",
    text:
    "It wasn't much, but it was mine. After months of saving every penny, I finally had enough to buy my first car. It was an old, slightly rusty sedan, but to me, it was freedom. I remember driving it home, windows down, music blasting, feeling on top of the world. That car took me on road trips, late-night drives, and countless adventures. It was more than just a car—it was the beginning of independence.",
    locations: ['Car Dealership', 'Town'],
    tags: [],
    persons: [
      PersonModel(firstName: "Luisa", lastName: "Weber", relationship: "Mother"),
    ],
    tone: 'Excited',
    quotes: ["It's mine!", "I'm finally free to go anywhere."],
    events: [
      EventModel(date: DateTime(1975, 5, 8), description: "Bought first car"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),

  // New Memories with Updated Years
  MemoryModel(
    dateTime: DateTime(1997, 9, 12),
    createdAt: DateTime.now().subtract(const Duration(days: 50)),
    title: "Grandmother's Secret Apple Strudel Recipe",
    subtitle: "A family tradition passed down",
    summary: "Gisela finally shared her famous apple strudel recipe that she's kept secret for decades.",
    text:
    "For as long as I can remember, Grandmother Gisela's apple strudel has been the highlight of every family gathering. The perfectly crisp pastry, the tender spiced apples, and that hint of something special that no one could ever quite identify. For decades, she guarded her recipe, claiming it was a 'Schmidt family secret.' But that day, as we sat in her kitchen watching the rain patter against the windows, she decided it was time to pass it down. I'll never forget how carefully she measured each ingredient, how precisely she demonstrated the technique of stretching the dough until it was paper-thin. 'The secret,' she whispered, 'is in how you fold the dough, and a splash of rose water that no one expects.' As the kitchen filled with the warm, comforting scent of baking, she told stories of how she learned the recipe from her own grandmother during the difficult post-war years, when simple pleasures meant everything.",
    locations: ['Gisela\'s Kitchen', 'Family Home'],
    tags: ['recipe', 'food'],
    persons: [
      PersonModel(firstName: "Gisela", lastName: "Schmidt", relationship: "Grandmother"),
      PersonModel(firstName: "Luisa", lastName: "Weber", relationship: "Mother"),
      PersonModel(firstName: "Lena", lastName: "Weber", relationship: "Daughter"),
    ],
    tone: 'Warm',
    quotes: ["The secret is in how you fold the dough", "Some traditions are worth preserving"],
    events: [
      EventModel(date: DateTime(1993, 9, 12), description: "Recipe sharing"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
  MemoryModel(
    dateTime: DateTime(1997, 9, 3),
    createdAt: DateTime.now().subtract(const Duration(days: 75)),
    title: "First Day at Gymnasium",
    subtitle: "Beginning of a new chapter",
    summary: "Max's first day at gymnasium was a mix of nerves and excitement. Thomas insisted on taking far too many photos.",
    text:
    "The morning was chaos – Max couldn't find his new shoes, Thomas was fussing with the camera, and Luisa was frantically making sure the school supplies were properly labeled. Despite waking up extra early, we somehow still managed to be running late. Max stood at the front door in his crisp new uniform, backpack looking almost too big for his shoulders. 'I'm not nervous,' he insisted, though the slight tremble in his voice betrayed him. The drive to the gymnasium was filled with Thomas giving encouraging advice and Luisa reminding Max about his lunch. When we arrived, the schoolyard was buzzing with activity – returning students greeting each other loudly, other new students looking as apprehensive as Max felt. Before he walked through those imposing doors, Max turned back for one final hug. 'You're going to do great things,' Thomas whispered. As we watched him disappear into the building, Luisa squeezed my hand tight. It wasn't until we were back in the car that she finally let the tears come. 'Our little boy is growing up so fast,' she said. That evening, Max came home full of stories about his new teachers, potential friends, and the vastness of the gymnasium compared to his old school.",
    locations: ['Home', 'Gymnasium', 'Car'],
    tags: ['school', 'childhood', 'growing up'],
    persons: [
      PersonModel(firstName: "Max", lastName: "Weber", relationship: "Son"),
      PersonModel(firstName: "Thomas", lastName: "Weber", relationship: "Father"),
      PersonModel(firstName: "Luisa", lastName: "Weber", relationship: "Mother"),
    ],
    tone: 'Emotional',
    quotes: ["I'm not nervous", "You're going to do great things", "Our little boy is growing up so fast"],
    events: [
      EventModel(date: DateTime(1997, 9, 3), description: "First day at gymnasium"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
  MemoryModel(
    dateTime: DateTime(2003, 7, 27),
    createdAt: DateTime.now().subtract(const Duration(days: 110)),
    title: "Uncle Karl's Retirement Party",
    subtitle: "Celebrating 40 years at Siemens",
    summary: "After four decades at the same company, Karl finally retired. The party was full of surprises and emotions.",
    text:
    "The community hall was decorated with blue and white balloons – Siemens colors – and photos from Karl's 40-year career lined the walls. Everyone was there: old colleagues, family members, friends from his bowling league. We had been planning this surprise for months, and when Karl walked in, the look of shock on his face was priceless. He stood frozen at the doorway while everyone cheered, until Helga gently pushed him forward. Throughout the evening, colleagues took turns sharing stories about working with Karl – tales of his unwavering dedication, his legendary problem-solving abilities, and the countless times he had mentored younger engineers. His old boss presented him with a gold watch, a tradition that Karl had always joked about. 'I never thought I'd be one of those old-timers who gets the watch,' he said, voice thick with emotion. After dinner, Thomas unveiled the slideshow we had created, featuring photos from Karl's first day at work in 1963 up to his last week. When they played the video messages from colleagues who couldn't attend – including three who had retired to other countries – Karl finally broke down in tears. 'I didn't realize I had made such an impact,' he said. As the night wound down, Karl raised his glass: 'To the company that became my second family, and to the real family who supported me through it all.'",
    locations: ['Community Hall', 'Siemens'],
    tags: ['work', 'career'],
    persons: [
      PersonModel(firstName: "Karl", lastName: "Müller", relationship: "Uncle"),
      PersonModel(firstName: "Helga", lastName: "Müller", relationship: "Aunt"),
      PersonModel(firstName: "Thomas", lastName: "Weber", relationship: "Father"),
      PersonModel(firstName: "Luisa", lastName: "Weber", relationship: "Mother"),
    ],
    tone: 'Celebratory',
    quotes: ["I never thought I'd be one of those old-timers who gets the watch", "I didn't realize I had made such an impact", "To the company that became my second family"],
    events: [
      EventModel(date: DateTime(2003, 4, 27), description: "Retirement celebration"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
  MemoryModel(
    dateTime: DateTime(1999, 11, 5),
    createdAt: DateTime.now().subtract(const Duration(days: 140)),
    title: "Lena's First Piano Recital",
    subtitle: "A star is born",
    summary: "After months of practice, Lena performed Beethoven's 'Für Elise' at her first piano recital.",
    text:
    "The music school's recital hall was packed with proud parents and nervous children clutching sheet music. Lena had been practicing for months, spending hours at the piano until Beethoven's 'Für Elise' was perfect. Backstage, her hands trembled slightly as she peeked through the curtain at the audience. 'What if I mess up?' she whispered. Thomas knelt beside her, straightening the bow in her hair. 'Then you'll keep playing, just like we practiced. No one will even notice.' When her name was called, she walked onto the stage with such poise that it was hard to believe she was only eight years old. She sat at the grand piano, adjusted her posture exactly as her teacher had taught her, and took a deep breath. The first few notes were hesitant, but then something magical happened – she forgot about the audience and lost herself in the music. Her small fingers danced across the keys with surprising confidence, bringing Beethoven's beloved composition to life. In the third row, Luisa squeezed my hand so tightly it almost hurt, tears of pride streaming down her face. When Lena finished, there was a moment of silence before the audience erupted in applause. She stood and gave a perfect curtsy, just as she had practiced at home dozens of times. Later, her piano teacher Frau Becker approached us with a sparkle in her eye. 'That child has a gift,' she said. 'With the right nurturing, she could go very far.'",
    locations: ['Music School', 'Recital Hall'],
    tags: ['childhood', 'growing up'],
    persons: [
      PersonModel(firstName: "Lena", lastName: "Weber", relationship: "Daughter"),
      PersonModel(firstName: "Thomas", lastName: "Weber", relationship: "Father"),
      PersonModel(firstName: "Luisa", lastName: "Weber", relationship: "Mother"),
    ],
    tone: 'Proud',
    quotes: ["What if I mess up?", "Then you'll keep playing, just like we practiced", "That child has a gift"],
    events: [
      EventModel(date: DateTime(1999, 11, 5), description: "Piano recital"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
  MemoryModel(
    dateTime: DateTime(2003, 7, 15),
    createdAt: DateTime.now().subtract(const Duration(days: 165)),
    title: "Summer in Tuscany",
    subtitle: "Two weeks of Italian bliss",
    summary: "Our family vacation to Italy was filled with amazing food, historical wonders, and creating memories that will last a lifetime.",
    text:
    "The villa we rented sat perched on a Tuscan hillside, surrounded by olive groves and vineyards that stretched to the horizon. Each morning, we woke to golden sunlight streaming through the shutters and the distant sound of church bells. On our third day, we visited Florence, where Max and Lena stood mesmerized before Michelangelo's David. 'He's naked,' Lena whispered loudly, causing nearby tourists to chuckle. The Uffizi Gallery was next, though we only made it through half before the children's patience for Renaissance art was exhausted. We compensated with excessive amounts of gelato – Thomas kept a running tally of flavors tried, with pistachio emerging as the family favorite. The cooking class we took in a small village outside Siena was perhaps the highlight. The grandmotherly instructor, Nonna Maria, took a special liking to Luisa, insisting her hands were 'made for pasta.' For four hours, we kneaded, rolled, and shaped fresh pasta, preparing a feast of ravioli, pappardelle, and tortellini. 'This is nothing like the pasta we get at home,' Max declared, his face covered in tomato sauce. In the evenings, we sat on the villa's terrace, watching fireflies dance among the olive trees while sipping local wine (and juice for the children). Thomas tried to teach everyone constellations, though we suspect he was making up most of the names. On our last night, Luisa proposed a toast: 'To Italy, for giving us the perfect escape, and to us, for creating memories that will warm us through the coldest German winters.'",
    locations: ['Tuscany', 'Florence', 'Siena', 'Italian Villa'],
    tags: ['vacation', 'travel', 'exploration'],
    persons: [
      PersonModel(firstName: "Luisa", lastName: "Weber", relationship: "Mother"),
      PersonModel(firstName: "Thomas", lastName: "Weber", relationship: "Father"),
      PersonModel(firstName: "Max", lastName: "Weber", relationship: "Son"),
      PersonModel(firstName: "Lena", lastName: "Weber", relationship: "Daughter"),
    ],
    tone: 'Joyful',
    quotes: ["He's naked", "This is nothing like the pasta we get at home", "To Italy, for giving us the perfect escape"],
    events: [
      EventModel(date: DateTime(1990, 7, 15), description: "Italian vacation"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
  MemoryModel(
    dateTime: DateTime(1985, 6, 8),
    createdAt: DateTime.now().subtract(const Duration(days: 210)),
    title: "Grandfather Franz's Workshop Lessons",
    subtitle: "Learning craftsmanship from a master",
    summary: "Every Saturday for a summer, Max spent time in Franz's workshop learning to build and repair things.",
    text:
    "The workshop behind Grandfather Franz's house was a magical place – filled with the smell of sawdust and machine oil, walls lined with tools whose names Max was slowly learning. That summer, Franz decided it was time to pass on his knowledge to his grandson. Every Saturday morning, Max would arrive eager and attentive, watching as Franz's weathered hands demonstrated techniques perfected over decades. They started with simple projects – a birdhouse, a small wooden box with dovetail joints – before progressing to more complex undertakings. Franz was a patient teacher, never raising his voice even when Max made mistakes. 'Mistakes are how we learn,' he would say, showing Max how to correct or incorporate the error. By midsummer, they had started restoring an antique wooden radio cabinet that Franz had found at a flea market. Max learned to steam and bend wood, to match stain colors, to apply varnish in smooth, even coats. 'This is how my father taught me,' Franz would often say, 'and how his father taught him.' On the final Saturday, when the restored cabinet stood gleaming and complete, Franz presented Max with his own set of hand tools. 'These are not toys,' he said seriously. 'They are the extension of your hands and your mind.' That evening, as they sat admiring their summer's work, Franz put his arm around Max's shoulders. 'You have good hands,' he said quietly. 'Steady and patient. Remember, anything broken can be fixed with enough care and the right tools.' Years later, Max would say those summer Saturdays shaped not just his appreciation for craftsmanship, but his approach to solving problems in life.",
    locations: ['Workshop', 'Franz\'s House'],
    tags: ['childhood', 'growing up'],
    persons: [
      PersonModel(firstName: "Franz", lastName: "Schmidt", relationship: "Grandfather"),
      PersonModel(firstName: "Max", lastName: "Weber", relationship: "Son"),
    ],
    tone: 'Instructive',
    quotes: ["Mistakes are how we learn", "These are not toys", "You have good hands", "Anything broken can be fixed with enough care and the right tools"],
    events: [
      EventModel(date: DateTime(1985, 6, 8), description: "Workshop lessons"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
  MemoryModel(
    dateTime: DateTime(2001, 2, 16),
    createdAt: DateTime.now().subtract(const Duration(days: 258)),
    title: "Luisa's Promotion Celebration",
    subtitle: "Hard work pays off",
    summary: "After years of dedication, Luisa was promoted to Senior Research Scientist at the pharmaceutical company.",
    text:
    "The letter arrived on a Tuesday – formal and official on company letterhead, but the words made Luisa's hands shake with excitement. After five years of dedicated research, countless late nights in the lab, and a groundbreaking paper on antibody development, she had been promoted to Senior Research Scientist. Thomas insisted on a proper celebration. He secretly arranged a dinner at Zur Traube, the upscale restaurant we normally reserved for milestone anniversaries. He even coordinated with her colleagues – when we arrived, Dr. Becker, the lab director, and several team members were waiting with champagne. 'To the most brilliant mind in our department,' Dr. Becker toasted, 'whose dedication will likely save countless lives.' What touched Luisa most was the hand-drawn cards from Max and Lena. Max had attempted to draw a microscope ('It looks more like a robot,' he admitted), while Lena had written in her careful script: 'My mommy is the smartest scientist in the world.' Later that night, after the children were asleep, Luisa confessed that there had been moments when she questioned her choice to pursue such a demanding career while raising a family. 'I've missed school plays and parent meetings,' she said. 'I've come home too tired to help with homework.' Thomas reminded her of how her eyes lit up when she talked about her research, how the children boasted to their friends about their mother who 'fights diseases,' how she was modeling dedication and passion for them. 'You're not just advancing science,' he said, 'you're showing our children what it means to pursue something meaningful.' The promotion came with not just a salary increase, but the opportunity to lead her own research team – a perfect balance of recognition for past work and opportunity for future impact.",
    locations: ['Home', 'Zur Traube Restaurant', 'Pharmaceutical Company'],
    tags: ['work', 'career'],
    persons: [
      PersonModel(firstName: "Luisa", lastName: "Weber", relationship: "Mother"),
      PersonModel(firstName: "Thomas", lastName: "Weber", relationship: "Father"),
      PersonModel(firstName: "Max", lastName: "Weber", relationship: "Son"),
      PersonModel(firstName: "Lena", lastName: "Weber", relationship: "Daughter"),
    ],
    tone: 'Accomplished',
    quotes: ["To the most brilliant mind in our department", "My mommy is the smartest scientist in the world", "You're not just advancing science"],
    events: [
      EventModel(date: DateTime(2001, 2, 16), description: "Career promotion"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
  MemoryModel(
    dateTime: DateTime(1987, 10, 3),
    createdAt: DateTime.now().subtract(const Duration(days: 300)),
    title: "Helga's Famous Black Forest Cake Disaster",
    subtitle: "A birthday surprise gone wrong",
    summary: "Aunt Helga's attempt to make her signature cake for Karl's birthday resulted in a kitchen catastrophe and an unforgettable memory.",
    text:
    "Aunt Helga's Black Forest cake was legendary in our family – layers of chocolate sponge, cherries, cream, and kirsch that she made only for special occasions. For Uncle Karl's 60th birthday, she was determined to outdo herself with the most elaborate version yet. The trouble began when she decided to double the recipe without adjusting the baking time. We arrived at their house to find the kitchen looking like a scene from a comedy film – cocoa powder dusting every surface, cherry juice splattered across the floor, and Helga herself sitting amidst the chaos, laughing until tears ran down her face. The cake, it seemed, had spectacularly collapsed when she attempted to assemble the layers. 'The cream was too warm,' she explained between fits of giggles, 'and then everything just started sliding!' Karl, rather than being disappointed, found the situation hilarious. 'In forty years of marriage,' he declared, 'I've never seen such a magnificent disaster!' Not wanting to waste the ingredients, we all grabbed spoons and ate the delicious mess directly from the serving platter. It was, everyone agreed, the most enjoyable version of Helga's cake we'd ever had. Thomas, ever the practical one, called the local bakery and arranged for a last-minute replacement cake, but honestly, it couldn't compare to the memory of all of us crowded around the kitchen island, eating cake with our hands and laughing until our sides hurt. Now, years later, whenever anyone mentions Black Forest cake, we all exchange knowing looks and try to suppress our smiles.",
    locations: ['Karl and Helga\'s House', 'Kitchen'],
    tags: ['food'],
    persons: [
      PersonModel(firstName: "Helga", lastName: "Müller", relationship: "Aunt"),
      PersonModel(firstName: "Karl", lastName: "Müller", relationship: "Uncle"),
      PersonModel(firstName: "Thomas", lastName: "Weber", relationship: "Father"),
      PersonModel(firstName: "Luisa", lastName: "Weber", relationship: "Mother"),
    ],
    tone: 'Humorous',
    quotes: ["The cream was too warm, and then everything just started sliding!", "In forty years of marriage, I've never seen such a magnificent disaster!"],
    events: [
      EventModel(date: DateTime(1987, 10, 3), description: "Birthday cake disaster"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
  MemoryModel(
    dateTime: DateTime(2009, 8, 12),
    createdAt: DateTime.now().subtract(const Duration(hours: 2)),
    title: "Hiking the Zugspitze",
    subtitle: "Conquering Germany's highest peak",
    summary: "Our family's challenging two-day hike to the summit of Zugspitze tested our limits but rewarded us with unforgettable views.",
    text:
    "It was Thomas's idea – a family challenge to mark Max's birthday. 'We'll climb Germany's highest mountain together,' he announced at dinner one night, spreading trail maps across the table. Months of preparation followed – training hikes on weekends, researching routes, breaking in new hiking boots. We chose the Reintal route, longer but less technically challenging for the children. The journey began at the Partnach Gorge, where we marveled at the rushing water cutting through towering rock walls. By midday, the trail had steepened considerably, and Lena began to flag. 'I can't go any further,' she declared dramatically, plopping down on a rock. That's when Thomas revealed his secret motivational tool – a small bag of her favorite chocolate-covered marzipan pieces, doled out at strategic rest stops. We spent the night at the Reintalangerhütte, sharing the mountain hut with other hikers from across Europe. After dinner, an Austrian climber pulled out an accordion and led everyone in traditional mountain songs, with Max enthusiastically joining in despite not knowing the words. Day two began before sunrise, with a light drizzle that fortunately cleared by mid-morning. The final ascent was the most challenging – a steep climb over loose scree that seemed to slide back with every step forward. Luisa firmly gripped Lena's hand, while Max insisted on forging ahead with Thomas. When we finally reached the summit cross, the world seemed to open up around us – Austria, Germany, Switzerland, and Italy spread out in a panorama of breathtaking beauty. 'We did it,' Thomas said, his voice thick with emotion as he gathered us all in a group hug. 'We're standing on top of Germany.' The summit photo – wind-tousled hair, flushed faces, and triumphant smiles – now hangs prominently in our living room, a testament to what we can accomplish together.",
    locations: ['Zugspitze', 'Partnach Gorge', 'Reintalangerhütte', 'Bavarian Alps'],
    tags: ['adventure', 'exploration'],
    persons: [
      PersonModel(firstName: "Thomas", lastName: "Weber", relationship: "Father"),
      PersonModel(firstName: "Luisa", lastName: "Weber", relationship: "Mother"),
      PersonModel(firstName: "Max", lastName: "Weber", relationship: "Son"),
      PersonModel(firstName: "Lena", lastName: "Weber", relationship: "Daughter"),
    ],
    tone: 'Triumphant',
    quotes: ["I can't go any further", "We did it", "We're standing on top of Germany"],
    events: [
      EventModel(date: DateTime(1995, 8, 12), description: "Mountain hiking adventure"),
    ],
    audioUrl: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3",
  ),
];
