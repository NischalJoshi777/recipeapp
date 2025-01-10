import 'package:myrecipeapp/data/model/recipe.dart';

abstract class RecipeService {
  Future<RecipeResponse> fetchRecipesByCategory({
    required String type,
    required,
    int offset = 0,
    int number = 10,
  });
}
