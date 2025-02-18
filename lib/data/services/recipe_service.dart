import 'package:myrecipeapp/data/model/recipe/recipe.dart';
import 'package:myrecipeapp/data/model/recipe_details/recipe_details.dart';

abstract class RecipeService {
  Future<RecipeResponse> fetchRecipesByCategory({
    required String type,
    int offset = 0,
    int number = 10,
  });

  Future<List<RecipeDetails>> fetchLocalRecipes();
}
