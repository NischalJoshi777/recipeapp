import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Hello! Anne'),
        Text(
          'What would you like to cook today ?',
          style: context.appTheme.bodyLarge.semiBold.copyWith(
            color: Colors.black87,
            height: 1.25,
          ),
        ),
      ],
    );
  }
}
