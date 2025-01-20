import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';

class CookingTimeLikesScore extends StatelessWidget {
  final int cookingMinutes;
  final int aggregatedLikes;
  final double healthScore;

  const CookingTimeLikesScore({
    super.key,
    required this.cookingMinutes,
    required this.aggregatedLikes,
    required this.healthScore,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12.0,
      children: [
        _IconWithText(
          icon: Icons.watch_later_outlined,
          text: '${cookingMinutes.toString()} mins',
        ),
        _IconWithText(
          icon: Icons.thumb_up_alt_outlined,
          text: "${aggregatedLikes.toString()} likes",
        ),
        Text(
          "Health Score: ${healthScore.toString()} ",
          style: context.appTheme.bodySmall.semiBold,
        ),
      ],
    );
  }
}

class _IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;

  const _IconWithText({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 8.0,
      children: [
        Icon(
          icon,
          size: 24.0,
          color: Palette.darkGray,
        ),
        Text(
          text,
          style: context.appTheme.bodySmall,
        )
      ],
    );
  }
}
