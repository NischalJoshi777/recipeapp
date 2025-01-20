import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';
import 'package:vector_math/vector_math.dart' as math;

class MacrosChart extends StatefulWidget {
  final double calorieCount;
  final double proteinPercentage;
  final double carbsPercentage;
  final double fatsPercentage;

  const MacrosChart({
    super.key,
    required this.proteinPercentage,
    required this.carbsPercentage,
    required this.fatsPercentage,
    required this.calorieCount,
  });

  @override
  State<MacrosChart> createState() => _MacrosChartState();
}

class _MacrosChartState extends State<MacrosChart>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _proteinProgress;
  late Animation<double> _carbsProgress;
  late Animation<double> _fatsProgress;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // Smooth animation
    );

    final myCurvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    const total = 100;
    _proteinProgress = Tween<double>(
      begin: 0,
      end: (widget.proteinPercentage / total) * 360, // Convert to degrees
    ).animate(myCurvedAnimation);

    _carbsProgress = Tween<double>(
      begin: 0,
      end: (widget.carbsPercentage / total) * 360, // Convert to degrees
    ).animate(myCurvedAnimation);

    _fatsProgress = Tween<double>(
      begin: 0,
      end: (widget.fatsPercentage / total) * 360, // Convert to degrees
    ).animate(myCurvedAnimation);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      spacing: 30.0,
      children: [
        _buildDonutChart(),
        Flexible(
          flex: 1,
          child: _buildIndicators(),
        ),
      ],
    );
  }

  Widget _buildIndicators() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10.0,
      children: [
        _buildColorContainer(
          [Colors.red, Colors.red.withOpacity(0.3)],
          'Protein: ${widget.proteinPercentage}%',
        ),
        _buildColorContainer([
          Palette.primaryGreen,
          Palette.primaryGreen.withOpacity(0.2),
        ], 'Carbs: ${widget.carbsPercentage}%'),
        _buildColorContainer(
          [Colors.yellow.withOpacity(0.5), Colors.yellow],
          'Fats: ${widget.fatsPercentage}%',
        ),
      ],
    );
  }

  Widget _buildColorContainer(List<Color> colors, String label) {
    return Row(
      spacing: 12.0,
      children: [
        Container(
          height: 20.0,
          width: 20.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Text(
            label,
            style: context.appTheme.bodyRegular.semiBold,
            maxLines: 2,
          ),
        )
      ],
    );
  }

  Widget _buildDonutChart() {
    return SizedBox.fromSize(
      size: const Size.fromRadius(86.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return CustomPaint(
              painter: _DonutChart(
                proteinProgress: _proteinProgress.value,
                carbsProgress: _carbsProgress.value,
                fatsProgress: _fatsProgress.value,
              ),
              child: Center(
                child: Text(
                  "${widget.calorieCount.toString()} kcal",
                  style:
                      context.appTheme.bodySmall.copyWith(fontSize: 16.0).bold,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _DonutChart extends CustomPainter {
  final double proteinProgress;
  final double carbsProgress;
  final double fatsProgress;

  _DonutChart({
    required this.proteinProgress,
    required this.carbsProgress,
    required this.fatsProgress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    const double strokeWidth = 30.0;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    Paint createGradientPaint(
      List<Color> colors, {
      Alignment begin = Alignment.topLeft,
      Alignment end = Alignment.bottomRight,
    }) {
      return Paint()
        ..shader = LinearGradient(
          begin: begin,
          end: end,
          colors: colors,
          stops: const [0.4, 1.0],
        ).createShader(Rect.fromCircle(center: center, radius: radius))
        ..strokeCap = StrokeCap.butt
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth;
    }

    //Gradient colors
    Paint proteinPaint =
        createGradientPaint([Colors.red, Colors.red.withOpacity(0.3)]);
    Paint carbsPaint = createGradientPaint(
        [Palette.primaryGreen, Palette.primaryGreen.withOpacity(0.2)]);
    Paint fatsPaint = createGradientPaint(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        [Colors.yellow.withOpacity(0.5), Colors.yellow]);

    double startAngle = math.radians(-90); // Start from the top
    final proteinSweepAngle = math.radians(proteinProgress.clamp(0, 360));
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      proteinSweepAngle,
      false,
      proteinPaint,
    );

    startAngle += proteinSweepAngle; // Changing the start point
    final carbsSweepAngle = math.radians(carbsProgress.clamp(0, 360));
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      carbsSweepAngle,
      false,
      carbsPaint,
    );

    startAngle += carbsSweepAngle; //Changing the start point
    final fatsSweepAngle = math.radians(fatsProgress.clamp(0, 360));
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      fatsSweepAngle,
      false,
      fatsPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
