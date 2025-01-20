import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';
import 'package:myrecipeapp/data/services/recipe_service.dart';
import 'package:myrecipeapp/di.dart';
import 'package:myrecipeapp/presentation/details/cubit/detail_cubit.dart';
import 'package:myrecipeapp/presentation/details/view_model/recipe_detail_view_model.dart';
import 'package:myrecipeapp/presentation/details/widget/macros_chart.dart';
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
          color: Palette.white,
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
                _CookingTimeAndLikes(
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
                    Text(
                      recipe.instructions,
                      style: context.appTheme.bodyRegular,
                    ),
                  ],
                ),
                ExpandableHeader(
                  title: 'Ingredients',
                  content: [
                    IngredientsList(ingredients: recipe.ingredients),
                  ],
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CookingTimeAndLikes extends StatelessWidget {
  final int cookingMinutes;
  final int aggregatedLikes;
  final double healthScore;

  const _CookingTimeAndLikes({
    super.key,
    required this.cookingMinutes,
    required this.aggregatedLikes,
    required this.healthScore,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12.0,
      children: [
        _IconWithText(
          icon: Icons.watch_later_outlined,
          text: '${cookingMinutes.toString()} mins',
        ),
        _IconWithText(
          icon: Icons.thumb_up_alt_outlined,
          text: "${aggregatedLikes.toString()} likes",
        ),
        Text(
          "Health Score: ${healthScore.toString()} ",
          style: context.appTheme.bodySmall.semiBold,
        ),
      ],
    );
  }
}

class ExpandableHeader extends StatelessWidget {
  final String title;
  final List<Widget> content;

  const ExpandableHeader({
    super.key,
    required this.content,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final GlobalKey expansionTileKey = GlobalKey();
    return ExpansionTile(
      key: expansionTileKey,
      onExpansionChanged: (value) {
        if (value) {
          _scrollToItem(expansionTileKey);
        }
      },
      iconColor: Palette.primaryGreen,
      collapsedIconColor: Palette.darkGray,
      childrenPadding: EdgeInsets.zero,
      collapsedShape: const RoundedRectangleBorder(
        side: BorderSide.none,
      ),
      shape: const RoundedRectangleBorder(
        side: BorderSide.none,
      ),
      tilePadding: EdgeInsets.zero,
      title: HeaderText(text: title),
      children: content,
    );
  }

  void _scrollToItem(GlobalKey key) {
    final currentContext = key.currentContext;
    if (currentContext != null && currentContext.mounted) {
      Future.delayed(const Duration(milliseconds: 200)).then((value) {
        Scrollable.ensureVisible(
          currentContext,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 200),
        );
      });
    }
  }
}

class CategoriesTickList extends StatelessWidget {
  final RecipeDetailVM recipe;

  const CategoriesTickList({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12.0,
      runSpacing: 12.0,
      children: [
        _buildCategoryContainer(
          'Vegan',
          recipe.isVegan,
        ),
        _buildCategoryContainer(
          'Vegetarian',
          recipe.isVegetarian,
        ),
        _buildCategoryContainer(
          'Dairy Free',
          recipe.isDairyFree,
        ),
        _buildCategoryContainer(
          'Gluten Free',
          recipe.isGlutenFree,
        ),
        _buildCategoryContainer(
          'Ketogenic',
          recipe.isKetogenic,
        ),
      ],
    );
  }

  Widget _buildCategoryContainer(String category, bool isTrue) {
    return Builder(
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              width: 1.0,
              color: isTrue ? Palette.primaryGreen : Colors.red,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                height: 12.0,
                width: 12.0,
                isTrue ? 'assets/image/check.png' : 'assets/image/close.png',
              ),
              const SizedBox(width: 4.0),
              Text(
                category,
                style: context.appTheme.bodySmall.semiBold,
              )
            ],
          ),
        );
      },
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
      spacing: 8.0,
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
      children: ingredients
          .map(
            (e) => ListTile(
              trailing: Text(
                '${e.measure.amount.toString()} ${e.measure.unitLong}',
              ),
              leading: Image.network(
                height: 50.0,
                width: 50.0,
                'https://spoonacular.com/cdn/ingredients_100x100/${e.image}',
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
              title: Text(
                e.original.toUpperCase(),
                style: context.appTheme.bodySmall.semiBold,
              ),
            ),
          )
          .toList(),
    );
  }
}
