import 'package:myrecipeapp/data/model/recipe.dart';

abstract class RecipeService {
  Future<RecipeResponse> fetchRecipesByCategory({
    required String type,
    int offset = 0,
    int number = 10,
  });
}
