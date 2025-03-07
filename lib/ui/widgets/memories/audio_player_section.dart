import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:story_cube_app/constants/icon_sizes.dart';
import 'package:story_cube_app/constants/radius_sizes.dart';
import 'package:story_cube_app/constants/text_styles.dart';
import 'package:story_cube_app/ui/widgets/memories/slider_wrapper.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class AudioPlayerSection extends StatefulWidget {
  const AudioPlayerSection({
    super.key,
    required this.audioUrl,
  });

  final String audioUrl;

  @override
  State<AudioPlayerSection> createState() => AudioPlayerSectionState();
}

class AudioPlayerSectionState extends State<AudioPlayerSection> {
  final _audioPlayer = AudioPlayer();
  final ValueNotifier<bool> _isPlaying = ValueNotifier<bool>(false);
  final ValueNotifier<Duration> _audioPlayerPosition = ValueNotifier<Duration>(Duration.zero);
  final ValueNotifier<Duration> _audioPlayerDuration = ValueNotifier<Duration>(Duration.zero);

  @override
  void initState() {
    super.initState();
    _audioPlayer.setAsset(widget.audioUrl);
    _audioPlayer.positionStream.listen((position) => _audioPlayerPosition.value = position);
    _audioPlayer.durationStream.listen((duration) => _audioPlayerDuration.value = duration!);
    _audioPlayer.playerStateStream.listen((state) {
      if (state.processingState == ProcessingState.completed) {
        _audioPlayerPosition.value = Duration.zero;
        _audioPlayer.pause();
        _audioPlayer.seek(_audioPlayerPosition.value);
        _isPlaying.value = false;
      }
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _audioPlayerPosition.dispose();
    _audioPlayerDuration.dispose();
    super.dispose();
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);
    return '${minutes.toString().padRight(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  void _handlePlayPause() {
    if (_audioPlayer.playing) {
      _audioPlayer.pause();
      _isPlaying.value = false;
    } else {
      _audioPlayer.play();
      _isPlaying.value = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            height: AppSizes.size_8 * 10,
            padding: const EdgeInsets.only(
              left: AppSizes.size_16,
              right: AppSizes.size_16,
              bottom: AppSizes.size_16,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.light ? AppColors.lightCard : AppColors.darkCard,
              borderRadius: BorderRadius.circular(AppRadiusSizes.medium),
            ),
            child: ValueListenableBuilder<Duration>(
              valueListenable: _audioPlayerPosition,
              builder: (context, position, child) => ValueListenableBuilder<Duration>(
                valueListenable: _audioPlayerDuration,
                builder: (context, duration, child) => Column(
                  children: [
                    SliderWrapper(
                      slider: Slider(
                        value: position.inSeconds.toDouble(),
                        max: duration.inSeconds.toDouble(),
                        inactiveColor: Theme.of(context).brightness == Brightness.light
                            ? AppColors.lightBackground
                            : AppColors.darkBackground,
                        onChanged: (value) => _audioPlayer.seek(Duration(seconds: value.toInt())),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(_formatDuration(position), style: AppTextStyles.caption),
                        Text(_formatDuration(duration), style: AppTextStyles.caption),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: AppSizes.size_16),
        ValueListenableBuilder<bool>(
          valueListenable: _isPlaying,
          builder: (context, isPlaying, child) => GestureDetector(
            onTap: _handlePlayPause,
            child: Container(
              width: AppSizes.size_48,
              height: AppSizes.size_48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).brightness == Brightness.light
                    ? AppColors.primaryColorLight
                    : AppColors.primaryColorDark,
              ),
              child: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow,
                color: Theme.of(context).brightness == Brightness.light ? Colors.white : Colors.black,
                size: AppIconSizes.large,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
