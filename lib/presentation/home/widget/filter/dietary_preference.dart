import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/recipe_list_cubit/recipe_list_cubit.dart';

import 'custom_choice_chip.dart';

class DietaryPreference extends StatelessWidget {
  DietaryPreference({super.key});

  final List<String> dietaryPreferences = [
    'Gluten Free',
    'Ketogenic',
    'Vegetarian',
    'Vegan',
    'Lacto-Vegetarian',
    'Pescetarian',
    'Paleo',
    'Primal',
    'Whole30',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeListCubit, RecipeListState>(
      builder: (context, state) {
        return Wrap(
          spacing: 4.0,
          runSpacing: 8.0,
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: dietaryPreferences.map(
            (preference) {
              return CustomChoiceChip(
                title: preference,
                isSelected: state.filter.dietaryPreference.contains(preference),
                onSelected: (value) {
                  context
                      .read<RecipeListCubit>()
                      .toggleDietaryPreference(preference);
                },
              );
            },
          ).toList(),
        );
      },
    );
  }
}
