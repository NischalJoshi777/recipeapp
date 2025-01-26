import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:shimmer/shimmer.dart';

class RecipeShimmerItem extends StatelessWidget {
  const RecipeShimmerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.0,
      children: [
        ShimmerItem(
          width: 160.0,
          height: 120.0,
        ),
        ShimmerItem(
          width: 160.0,
          height: 12.0,
        ),
        ShimmerItem(
          width: 120.0,
          height: 12.0,
        ),
      ],
    );
  }
}

class ShimmerItem extends StatelessWidget {
  final double width;
  final double height;
  final Widget? child;

  const ShimmerItem({
    super.key,
    required this.width,
    required this.height,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    const color = Palette.darkGray;
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: color.withValues(alpha: 0.1),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color..withValues(alpha: 0.25),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: child,
      ),
    );
  }
}
