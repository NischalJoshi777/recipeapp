import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/data/services/recipe_details_service/recipe_details_service.dart';
import 'package:myrecipeapp/di.dart';
import 'package:myrecipeapp/presentation/home/details/cubit/detail_cubit.dart';
import 'package:myrecipeapp/presentation/home/details/view_model/recipe_detail_view_model.dart';
import 'package:myrecipeapp/presentation/home/details/widget/categories_tick_list.dart';
import 'package:myrecipeapp/presentation/home/details/widget/cookingtime_likes_score.dart';
import 'package:myrecipeapp/presentation/home/details/widget/expandable_header.dart';
import 'package:myrecipeapp/presentation/home/details/widget/ingredients_list.dart';
import 'package:myrecipeapp/presentation/home/details/widget/macros_chart.dart';
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
      create: (_) => DetailCubit(recipeService: getIt<RecipeDetailService>())
        ..fetchRecipeDetails(id),
      child: Scaffold(
        body: BlocBuilder<DetailCubit, DetailState>(
          builder: (BuildContext context, state) {
            return state.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (recipe) => _DetailsLoaded(recipe: recipe),
              error: (mes) => const Text('Error'),
            );
          },
        ),
      ),
    );
  }
}

class _DetailsLoaded extends StatelessWidget {
  final RecipeDetailVM recipe;

  const _DetailsLoaded({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _FoodImage(
            img: recipe.image,
            id: recipe.id,
          ),
          _DetailBody(recipe: recipe),
        ],
      ),
    );
  }
}

class _FoodImage extends StatelessWidget {
  final String img;
  final int id;

  const _FoodImage({
    super.key,
    required this.id,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height *
              .44, // Added height constraint
          child: Hero(
            tag: id,
            child: Image.network(
              img,
              fit: BoxFit.fitHeight, // Prevents overflow
            ),
          ),
        ),
      ],
    );
  }
}

class _DetailBody extends StatelessWidget {
  final RecipeDetailVM recipe;

  const _DetailBody({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.40,
      bottom: 0,
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        child: Container(
          color: Palette.lightGray,
          padding: const EdgeInsets.only(
            top: 24.0,
            left: 20.0,
            right: 20.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderText(
                  text: "${recipe.title} (${recipe.servingSize} servings)",
                ),
                const SizedBox(height: 12.0),
                CookingTimeLikesScore(
                  cookingMinutes: recipe.cookingMinutes,
                  aggregatedLikes: recipe.aggregatedLikes,
                  healthScore: recipe.healthScore,
                ),
                const SizedBox(height: 12.0),
                CategoriesTickList(recipe: recipe),
                const SizedBox(height: 12.0),
                const HeaderText(text: 'Calorie Count'),
                const SizedBox(height: 12.0),
                MacrosChart(
                  calorieCount: recipe.calories,
                  proteinPercentage: recipe.caloricBreakDown.percentProtein,
                  carbsPercentage: recipe.caloricBreakDown.percentCarbs,
                  fatsPercentage: recipe.caloricBreakDown.percentFat,
                ),
                ExpandableHeader(
                  title: 'Instructions',
                  content: [
                    HtmlWidget(
                      recipe.instructions,
                    ),
                  ],
                ),
                ExpandableHeader(
                  title: 'Ingredients',
                  content: [
                    IngredientsList(ingredients: recipe.ingredients),
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
