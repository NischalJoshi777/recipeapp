import 'package:myrecipeapp/data/data_source/local_source.dart';
import 'package:myrecipeapp/data/data_source/remote_source.dart';
import 'package:myrecipeapp/data/model/recipe/recipe.dart';
import 'package:myrecipeapp/data/model/recipe_details/recipe_details.dart';
import 'package:myrecipeapp/data/services/recipe_service.dart';

class RecipeServiceImpl implements RecipeService {
  final RemoteSource remoteSource;
  final LocalSource<RecipeDetails> localSource;

  RecipeServiceImpl({
    required this.remoteSource,
    required this.localSource,
  });

  @override
  Future<RecipeResponse> fetchRecipesByCategory({
    required String type,
    int offset = 0,
    int number = 10,
  }) async {
    try {
      final response = await remoteSource.get(
        path: _EndPoints.categorySearch,
        queryParams: {
          "type": type,
          "offset": offset,
          "number": number,
          "addRecipeInformation": "True",
        },
      );
      return RecipeResponse.fromJson(response);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<List<RecipeDetails>> fetchLocalRecipes() {
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
