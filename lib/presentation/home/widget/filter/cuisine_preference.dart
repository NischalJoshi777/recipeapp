import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/recipe_list_cubit/recipe_list_cubit.dart';

import 'custom_choice_chip.dart';

class CuisinePreference extends StatelessWidget {
  CuisinePreference({super.key});

  final List<String> cuisines = [
    'African',
    'Asian',
    'American',
    'British',
    'Cajun',
    'Caribbean',
    'Chinese',
    'Eastern European',
    'European',
    'French',
    'German',
    'Greek',
    'Indian',
    'Irish',
    'Italian',
    'Japanese',
    'Jewish',
    'Korean',
    'Latin American',
    'Mediterranean',
    'Mexican',
    'Middle Eastern',
    'Nordic',
    'Southern',
    'Spanish',
    'Thai',
    'Vietnamese',
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
          children: cuisines.map((cuisine) {
            return CustomChoiceChip(
              title: cuisine,
              isSelected: state.filter.cuisinePreferences.contains(cuisine),
              onSelected: (_) {
                context
                    .read<RecipeListCubit>()
                    .toggleCuisinePreference(cuisine);
              },
            );
          }).toList(),
        );
      },
    );
  }
}
