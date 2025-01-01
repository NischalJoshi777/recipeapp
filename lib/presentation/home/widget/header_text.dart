import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';

class HeaderText extends StatelessWidget {
  final String text;

  const HeaderText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.appTheme.bodyRegular.semiBold.withColor(
        Colors.black87,
      ),
    );
  }
}
