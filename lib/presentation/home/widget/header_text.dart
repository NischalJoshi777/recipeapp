import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';

class HeaderText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const HeaderText({
    super.key,
    required this.text,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ??
          context.appTheme.bodyLarge.bold.withColor(
            Palette.darkGray,
          ),
    );
  }
}
