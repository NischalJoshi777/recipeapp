import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/recipe_list_cubit/recipe_list_cubit.dart';

import 'custom_choice_chip.dart';

class Intolerances extends StatelessWidget {
  Intolerances({super.key});

  final List<String> intolerances = [
    'Dairy',
    'Egg',
    'Gluten',
    'Grain',
    'Peanut',
    'Seafood',
    'Sesame',
    'Shellfish',
    'Soy',
    'Sulfite',
    'Tree Nut',
    'Wheat',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeListCubit, RecipeListState>(
      builder: (context, state) {
        return Wrap(
          spacing: 4.0,
          runSpacing: 8.0,
          alignment: WrapAlignment.start,
          // Align chips to start
          crossAxisAlignment: WrapCrossAlignment.start,
          // Align chips to the start vertically
          children: intolerances.map(
            (intolerance) {
              return CustomChoiceChip(
                title: intolerance,
                isSelected: state.filter.intolerances.contains(intolerance),
                onSelected: (_) {
                  context
                      .read<RecipeListCubit>()
                      .toggleIntolerances(intolerance);
                },
              );
            },
          ).toList(),
        );
      },
    );
  }
}
