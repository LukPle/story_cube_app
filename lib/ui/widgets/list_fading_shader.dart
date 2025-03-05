import 'package:flutter/material.dart';
import '../../constants/colors.dart';

enum FadingDirection {
  top,
  bottom,
  both,
}

class ListFadingShader extends StatelessWidget {
  const ListFadingShader({
    super.key,
    this.color,
    required this.child,
    this.direction = FadingDirection.both,
  });

  final Color? color;
  final Widget child;
  final FadingDirection direction;

  @override
  Widget build(BuildContext context) {
    final defaultColor =
        Theme.of(context).brightness == Brightness.light ? AppColors.lightBackground : AppColors.darkBackground;
    final gradientColor = color ?? defaultColor;

    List<Color> colors;
    List<double> stops;

    switch (direction) {
      case FadingDirection.top:
        colors = [
          gradientColor,
          gradientColor.withOpacity(0.8),
          gradientColor.withOpacity(0.6),
          gradientColor.withOpacity(0.4),
          gradientColor.withOpacity(0.2),
          Colors.transparent,
        ];
        stops = [0.0, 0.01, 0.05, 0.08, 0.12, 1.0];
        break;

      case FadingDirection.bottom:
        colors = [
          Colors.transparent,
          gradientColor.withOpacity(0.2),
          gradientColor.withOpacity(0.4),
          gradientColor.withOpacity(0.6),
          gradientColor.withOpacity(0.8),
          gradientColor,
        ];
        stops = [0.0, 0.9, 0.92, 0.95, 0.98, 1.0];
        break;

      case FadingDirection.both:
      default:
        colors = [
          gradientColor,
          gradientColor.withOpacity(0.8),
          gradientColor.withOpacity(0.6),
          gradientColor.withOpacity(0.4),
          gradientColor.withOpacity(0.2),
          Colors.transparent,
          Colors.transparent,
          gradientColor.withOpacity(0.2),
          gradientColor.withOpacity(0.4),
          gradientColor.withOpacity(0.6),
          gradientColor.withOpacity(0.8),
          gradientColor,
        ];
        stops = [0.0, 0.01, 0.05, 0.08, 0.12, 0.45, 0.55, 0.9, 0.92, 0.95, 0.98, 1.0];
        break;
    }

    return ShaderMask(
      shaderCallback: (Rect rect) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
          stops: stops,
        ).createShader(rect);
      },
      blendMode: BlendMode.dstOut,
      child: child,
    );
  }
}
