import 'package:flutter/material.dart';
import 'package:story_cube_app/models/memory_model.dart';
import 'package:story_cube_app/ui/widgets/audio_player_section.dart';

import '../../constants/sizes.dart';

class MemoryDetailsPage extends StatelessWidget {
  const MemoryDetailsPage({
    super.key,
    required this.memory,
  });

  final MemoryModel memory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.size_16),
        child: Column(
          children: [
            Text(memory.title),
            const SizedBox(height: AppSizes.size_32),
            const AudioPlayerSection(audioUrl: 'lib/assets/sound_example.mp3'),
          ],
        ),
      ),
    );
  }
}
