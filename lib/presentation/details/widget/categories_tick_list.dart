import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';
import 'package:myrecipeapp/presentation/details/view_model/recipe_detail_view_model.dart';

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
