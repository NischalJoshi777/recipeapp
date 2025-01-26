import 'package:flutter/material.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/widgets/recipe_shimmer_item.dart';

class RecipeShimmerList extends StatelessWidget {
  const RecipeShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(width: 12.0),
      itemBuilder: (context, index) => const RecipeShimmerItem(),
    );
  }
}
