import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';

class SeeAllTextButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SeeAllTextButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        'See all',
        style: context.appTheme.bodySmall.withColor(Palette.primaryGreen),
      ),
    );
  }
}
