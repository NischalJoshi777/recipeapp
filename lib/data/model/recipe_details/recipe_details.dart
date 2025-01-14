import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_details.freezed.dart';
part 'recipe_details.g.dart';

@freezed
class RecipeDetails with _$RecipeDetails {
  const factory RecipeDetails({
    @Default(false) bool vegan,
    @Default(false) bool vegetarian,
    @Default(false) bool dairyFree,
    @Default(false) bool glutenFree,
    @Default(0) int preparationMinutes,
    @Default(0) int cookingMinutes,
    @Default(0) int aggregatedLikes,
    @Default([]) List<String> dishTypes,
    required String summary,
    required String title,
    @Default(0) int healthScore,
  }) = _RecipeDetails;

  factory RecipeDetails.fromJson(Map<String, dynamic> json) =>
      _$RecipeDetailsFromJson(json);
}

@freezed
class Ingredients with _$Ingredients {
  const factory Ingredients({
    required String image,
    required String original,
  }) = _Ingredients;
  factory Ingredients.fromJson(Map<String, dynamic> json) =>
      _$IngredientsFromJson(json);
}
