import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/presentation/home/recipe_category/constants.dart';
import 'package:myrecipeapp/presentation/home/recipe_category/recipe_category_cubit.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/recipe_list_cubit/recipe_list_cubit.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30.0),
      color: Palette.darkGray,
      elevation: 4.0,
      child: TextField(
        onSubmitted: (value) {
          print(value);
          int categoryIndex = context.read<RecipeCategoryCubit>().state;
          final recipeListCubit = context.read<RecipeListCubit>();
          recipeListCubit.fetchRecipeListBasedOnCategory(
            category: category[categoryIndex],
            query: value,
          );
        },
        style: context.appTheme.bodyRegular,
        cursorHeight: 18.0,
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          prefixIcon: const Icon(
            Icons.search_outlined,
            color: Palette.darkGray,
            size: 20.0,
          ),
          hintText: 'Search any recipe',
          fillColor: Colors.white,
          hintStyle: context.appTheme.bodyRegular.copyWith(height: 0),
        ),
      ),
    );
  }
}
