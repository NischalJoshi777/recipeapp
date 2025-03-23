import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/recipe_list_cubit/recipe_list_cubit.dart';
import 'package:myrecipeapp/presentation/home/widget/filter/calories_slider.dart';
import 'package:myrecipeapp/presentation/home/widget/filter/cuisine_preference.dart';
import 'package:myrecipeapp/presentation/home/widget/filter/intolerances.dart';
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
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 24.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 40,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                HeaderText(
                  text: 'Calorie Count',
                  style: context.appTheme.bodyLarge.bold,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CaloriesSlider(),
                ),
                Text(
                  'Note: The minimum calorie per serving is 80 kcal.',
                  style: context.appTheme.bodySmall.semiBold
                      .withColor(Palette.darkGray.withAlpha(150)),
                ),
                const SizedBox(height: 16.0),
                HeaderText(
                  text: 'Dietary Preference',
                  style: context.appTheme.bodyLarge.bold,
                ),
                const SizedBox(height: 8.0),
                DietaryPreference(),
                const SizedBox(height: 16.0),
                HeaderText(
                  text: 'Cuisine Preference',
                  style: context.appTheme.bodyLarge.bold,
                ),
                const SizedBox(height: 8.0),
                CuisinePreference(),
                const SizedBox(height: 16.0),
                HeaderText(
                  text: 'Intolerances',
                  style: context.appTheme.bodyLarge.bold,
                ),
                const SizedBox(height: 8.0),
                Intolerances(),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        context.read<RecipeListCubit>().clearFilter();
                      },
                      child: const Text('Clear'),
                    ),
                    const SizedBox(width: 12.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8.0), // Rounded corners
                        ),
                      ),
                      onPressed: () {
                        context
                            .read<RecipeListCubit>()
                            .fetchRecipeListBasedOnCategory();
                        context.pop();
                      },
                      child: const Text('Apply'),
                    ),
                  ],
                ),
                const SizedBox(height: 80.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
