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
  Future<RecipeResponse> fetchRecipesByCategory({
    required String type,
    required String query,
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
          "query": query,
          "addRecipeInformation": "True",
        },
      );
      return RecipeResponse.fromJson(response);
    } catch (e) {
      print(e.toString());
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
