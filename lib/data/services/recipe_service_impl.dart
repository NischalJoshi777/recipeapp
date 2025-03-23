import 'package:myrecipeapp/data/data_source/local_source.dart';
import 'package:myrecipeapp/data/data_source/remote_source.dart';
import 'package:myrecipeapp/data/model/recipe/recipe.dart';
import 'package:myrecipeapp/data/model/recipe_bookmark/recipe_bookmarks.dart';
import 'package:myrecipeapp/data/services/recipe_service.dart';

class RecipeServiceImpl implements RecipeService {
  final RemoteSource remoteSource;
  final LocalSource<RecipeBookmark> localSource;

  RecipeServiceImpl({
    required this.remoteSource,
    required this.localSource,
  });

  @override
  Future<RecipeResponse> fetchRecipesByCategory(
      {required String type,
      required String query,
      required String cuisine,
      required String intolerances,
      required String dietaryPreferences,
      int offset = 0,
      int number = 10,
      int? maxCalorie}) async {
    try {
      Map<String, dynamic> queryParams = {
        "type": type,
        "offset": offset,
        "number": number,
        "query": query,
        "cuisine": cuisine,
        "diet": dietaryPreferences,
        "intolerances": intolerances,
        "addRecipeInformation": "True",
      };
      if (maxCalorie != null) {
        queryParams.addAll({"maxCalories": maxCalorie});
      }
      final response = await remoteSource.get(
        path: _EndPoints.categorySearch,
        queryParams: queryParams,
      );
      return RecipeResponse.fromJson(response);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<List<RecipeBookmark>> fetchLocalRecipes() {
    try {
      final value = localSource.getAll();
      return value;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

class _EndPoints {
  static const String categorySearch = "/complexSearch";
  static const String details = "/information";
}
