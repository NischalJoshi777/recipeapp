import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';
import 'package:myrecipeapp/presentation/home/widget/filter/cuisine_preference.dart';
import 'package:myrecipeapp/presentation/home/widget/header_text.dart';

import 'dietary_preference.dart';

class FilterContent extends StatelessWidget {
  const FilterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      child: Container(
        decoration: const BoxDecoration(
          color: Palette.lightGray,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(height: 8.0),
                const HeaderText(text: 'Set Filter'),
                const SizedBox(height: 8.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: HeaderText(
                    text: 'Dietary Preference',
                    style: context.appTheme.bodyLarge.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: DietaryPreference(),
                ),
                const SizedBox(height: 16.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: HeaderText(
                    text: 'Cuisine Preference',
                    style: context.appTheme.bodyLarge.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: CuisinePreference(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
