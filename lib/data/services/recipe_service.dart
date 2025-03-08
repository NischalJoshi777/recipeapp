import 'package:myrecipeapp/data/model/recipe/recipe.dart';
import 'package:myrecipeapp/data/model/recipe_bookmark/recipe_bookmarks.dart';

abstract class RecipeService {
  Future<RecipeResponse> fetchRecipesByCategory({
    required String type,
    required String query,
    int offset = 0,
    int number = 10,
  });

  Future<List<RecipeBookmark>> fetchLocalRecipes();
}
