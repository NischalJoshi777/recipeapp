import 'package:myrecipeapp/data/model/recipe_details/recipe_details.dart';

abstract class RecipeDetailService {
  Future<RecipeDetails> fetchRecipeDetails({required int id});

  Future<void> addToFavorites({
    required String key,
    required RecipeDetails recipeDetails,
  });

  Future<void> removeFromFavorites({
    required String key,
  });

  Future<RecipeDetails?> fetchFromLocal({
    required String key,
  });
}
