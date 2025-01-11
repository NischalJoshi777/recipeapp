import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
class RecipeResponse with _$RecipeResponse {
  const factory RecipeResponse({
    required List<Recipe> results,
    required int offset,
    required int number,
    required int totalResults,
  }) = _RecipeResponse;

  factory RecipeResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipeResponseFromJson(json);
}

@freezed
class Recipe with _$Recipe {
  const factory Recipe({
    required int id,
    required String title,
    required String image,
    required String imageType,
    required int? readyInMinutes,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}
