import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';

class CaloriesSlider extends StatefulWidget {
  const CaloriesSlider({super.key});

  @override
  State<CaloriesSlider> createState() => _CaloriesSliderState();
}

class _CaloriesSliderState extends State<CaloriesSlider> {
  double _value = 80.0;
  final double _min = 80.0;
  final double _max = 800.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("${_min.toInt()} kcal", style: context.appTheme.bodyRegular),
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbShape: CustomSliderThumb(
                thumbRadius: 18,
                value: _value,
              ),
            ),
            child: Slider(
              max: _max,
              min: _min,
              value: _value,
              activeColor: Palette.primaryGreen,
              inactiveColor: Palette.darkGray.withAlpha(50),
              onChanged: (newVal) {
                setState(() {
                  _value = newVal;
                });
              },
            ),
          ),
        ),
        Text(
          "${_max.toInt()} kcal",
          style: context.appTheme.bodyRegular,
        ),
      ],
    );
  }
}

class CustomSliderThumb extends SliderComponentShape {
  final double thumbRadius;
  final double value;

  CustomSliderThumb({
    required this.thumbRadius,
    required this.value,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(thumbRadius * 2, thumbRadius * 2);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    // Draw the thumb circle
    final Paint paint = Paint()
      ..color = sliderTheme.thumbColor ?? Palette.primaryGreen
      ..style = PaintingStyle.fill;

    canvas.drawCircle(center, thumbRadius, paint);

    // Draw the text inside the thumb
    final textSpan = TextSpan(
      text: this.value.toInt().toString(),
      style: TextStyle(
        fontSize: thumbRadius * 0.6, // Adjust font size based on thumb size
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    final textOffset = Offset(
      center.dx - (textPainter.width / 2),
      center.dy - (textPainter.height / 2),
    );
    textPainter.paint(canvas, textOffset);
  }
}
