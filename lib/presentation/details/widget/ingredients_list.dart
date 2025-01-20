import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';
import 'package:myrecipeapp/presentation/details/view_model/recipe_detail_view_model.dart';

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
