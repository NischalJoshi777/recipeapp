import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/data/services/recipe_details_service/recipe_details_service.dart';
import 'package:myrecipeapp/di.dart';
import 'package:myrecipeapp/presentation/home/details/cubit/detail_cubit.dart';
import 'package:myrecipeapp/presentation/home/details/view_model/recipe_detail_view_model.dart';
import 'package:myrecipeapp/presentation/home/details/widget/detail_body.dart';
import 'package:myrecipeapp/presentation/home/details/widget/favorite_button.dart';
import 'package:myrecipeapp/presentation/home/details/widget/food_image.dart';

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
        body: BlocConsumer<DetailCubit, DetailState>(
          listener: (context, state) {
            state.detailsDataState.whenOrNull(
              error: (message, isAddedToFavorites) {
                if (isAddedToFavorites) {
                  return _showErrorMessage(context, message);
                }
              },
            );
          },
          builder: (BuildContext context, state) {
            return state.detailsDataState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: () => _DetailsLoaded(recipe: state.detailVM!),
              error: (msg, _) => const Text('Error'),
            );
          },
        ),
      ),
    );
  }

  void _showErrorMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        dismissDirection: DismissDirection.up,
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height - 80,
          left: 20.0,
          right: 20.0,
        ),
        content: Text(
          message,
          style: context.appTheme.bodySmall.copyWith(
            color: Colors.white,
          ),
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
          FoodImage(
            img: recipe.image,
            id: recipe.id,
          ),
          Positioned(
            top: 10.0,
            right: 10.0,
            child: FavoriteButton(id: recipe.id.toString()),
          ),
          DetailBody(recipe: recipe),
        ],
      ),
    );
  }
}
