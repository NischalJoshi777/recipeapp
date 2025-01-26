import 'package:myrecipeapp/data/data_source/local_source.dart';
import 'package:myrecipeapp/data/data_source/remote_source.dart';
import 'package:myrecipeapp/data/model/recipe_details/recipe_details.dart';
import 'package:myrecipeapp/data/services/recipe_details_service/recipe_details_service.dart';

class RecipeDetailsServiceImpl extends RecipeDetailService {
  final RemoteSource remoteSource;
  final LocalSource<RecipeDetails> localSource;

  RecipeDetailsServiceImpl({
    required this.remoteSource,
    required this.localSource,
  });

  @override
  Future<RecipeDetails> fetchRecipeDetails({required int id}) async {
    try {
      final json = await remoteSource.get(
        path: id.toString() + _EndPoints.details,
        queryParams: {
          "includeNutrition": true,
        },
      );
      return RecipeDetails.fromJson(json);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> addToFavorites({
    required String key,
    required RecipeDetails recipeDetails,
  }) async {
    try {
      await localSource.save(
        key: key,
        value: recipeDetails,
      );
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<RecipeDetails?> fetchFromLocal({required String key}) async {
    try {
      return localSource.get(key: key);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> removeFromFavorites({required String key}) async {
    try {
      await localSource.delete(key: key);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

class _EndPoints {
  static const String details = "/information";
}
