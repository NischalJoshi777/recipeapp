import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/presentation/home/recipe_category/constants.dart';
import 'package:myrecipeapp/presentation/home/recipe_category/recipe_category_cubit.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/recipe_list_cubit/recipe_list_cubit.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/widgets/recipe_shimmer_item.dart';

class RecipeListError extends StatelessWidget {
  const RecipeListError({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => const RecipeErrorShimmerItem(),
      separatorBuilder: (context, index) => const SizedBox(width: 12.0),
      itemCount: 10,
    );
  }
}

class RecipeErrorShimmerItem extends StatelessWidget {
  const RecipeErrorShimmerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.0,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Container(
            color: Palette.darkGray.withValues(alpha: 0.5),
            width: 160.0,
            height: 120.0,
            child: IconButton(
              color: Colors.white,
              onPressed: () {
                final state = context.read<RecipeCategoryCubit>().state;
                final selectedCategory = category[state];
                context.read<RecipeListCubit>().fetchRecipeListBasedOnCategory(
                      category: selectedCategory,
                    );
              },
              icon: const Icon(
                size: 32.0,
                Icons.refresh,
                color: Palette.primaryGreen,
              ),
            ),
          ),
        ),
        const ShimmerItem(
          width: 160.0,
          height: 12.0,
        ),
        const ShimmerItem(
          width: 120.0,
          height: 12.0,
        ),
      ],
    );
  }
}
