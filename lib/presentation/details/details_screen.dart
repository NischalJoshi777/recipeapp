import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';
import 'package:myrecipeapp/data/services/recipe_service.dart';
import 'package:myrecipeapp/di.dart';
import 'package:myrecipeapp/presentation/details/cubit/detail_cubit.dart';
import 'package:myrecipeapp/presentation/details/view_model/recipe_detail_view_model.dart';
import 'package:myrecipeapp/presentation/home/widget/header_text.dart';

class DetailsScreen extends StatelessWidget {
  final int id;

  const DetailsScreen({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DetailCubit(recipeService: getIt<RecipeService>())
        ..fetchRecipeDetails(id),
      child: BlocBuilder<DetailCubit, DetailState>(
        builder: (BuildContext context, state) {
          return state.when(
            loading: () => const CircularProgressIndicator(),
            loaded: (recipe) => _Details(recipe: recipe),
            error: (mes) => const Text('Error'),
          );
        },
      ),
    );
  }
}

class _Details extends StatelessWidget {
  final RecipeDetailVM recipe;

  const _Details({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height *
                    .40, // Added height constraint
                child: Image.network(
                  recipe.image,
                  fit: BoxFit.fitHeight, // Prevents overflow
                ),
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.38,
            bottom: 0,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(24.0)),
              child: Container(
                color: Palette.lightGray,
                padding: const EdgeInsets.symmetric(
                  vertical: 24.0,
                  horizontal: 20.0,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 20.0,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HeaderText(text: recipe.title),
                              const Text('By: Nischal Joshi'),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        spacing: 12.0,
                        children: [
                          _IconWithText(
                            icon: Icons.watch_later_rounded,
                            text: '${recipe.cookingMinutes.toString()} mins',
                          ),
                          _IconWithText(
                            icon: Icons.thumb_up_sharp,
                            text: "${recipe.aggregatedLikes.toString()} likes",
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const HeaderText(text: 'Description'),
                          const SizedBox(width: 4.0),
                          Text(recipe.summary ?? '',
                              style: context.appTheme.bodySmall),
                        ],
                      ),
                      const HeaderText(text: 'Ingredients'),
                      IngredientsList(ingredients: recipe.ingredients),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;

  const _IconWithText({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 4.0,
      children: [
        Icon(
          icon,
          size: 24.0,
          color: Palette.darkGray,
        ),
        Text(
          text,
          style: context.appTheme.bodySmall,
        )
      ],
    );
  }
}

class IngredientsList extends StatelessWidget {
  final List<IngredientsVM> ingredients;

  const IngredientsList({
    super.key,
    required this.ingredients,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.0,
      children: ingredients
          .map(
            (e) => Container(
              color: Palette.white,
              child: ListTile(
                leading: Image.network(
                  height: 60.0,
                  width: 60.0,
                  'https://spoonacular.com/cdn/ingredients_100x100/${e.image}',
                ),
                contentPadding: const EdgeInsets.all(12.0),
                title: Text(
                  e.original,
                  style: context.appTheme.bodySmall.semiBold,
                ),
                subtitle: Text(e.original, style: context.appTheme.bodySmall),
              ),
            ),
          )
          .toList(),
    );
  }
}
