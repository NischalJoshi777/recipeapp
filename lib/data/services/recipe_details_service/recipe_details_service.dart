import 'package:myrecipeapp/data/model/recipe_bookmark/recipe_bookmarks.dart';
import 'package:myrecipeapp/data/model/recipe_details/recipe_details.dart';

abstract class RecipeDetailService {
  Future<RecipeDetails> fetchRecipeDetails({required int id});

  Future<void> addToFavorites({
    required String key,
    required RecipeBookmark recipeBookmark,
  });

  Future<void> removeFromFavorites({
    required String key,
  });

  Future<RecipeBookmark?> fetchFromLocal({
    required String key,
  });
}
