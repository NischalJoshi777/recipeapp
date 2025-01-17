import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_details.freezed.dart';
part 'recipe_details.g.dart';

@freezed
class RecipeDetails with _$RecipeDetails {
  const factory RecipeDetails({
    required int id,
    @Default(false) bool vegan,
    @Default(false) bool vegetarian,
    @Default(false) bool dairyFree,
    @Default(false) bool glutenFree,
    @Default(0) int preparationMinutes,
    @Default(0) int cookingMinutes,
    @Default(0) int aggregatedLikes,
    @Default([]) List<String> dishTypes,
    @Default('N/A') String summary,
    @Default('N/A') String title,
    required String image,
    @Default(0) int healthScore,
    @Default([]) List<Ingredients> extendedIngredients,
  }) = _RecipeDetails;

  factory RecipeDetails.fromJson(Map<String, dynamic> json) =>
      _$RecipeDetailsFromJson(json);
}

@freezed
class Ingredients with _$Ingredients {
  const factory Ingredients({
    String? image,
    @Default('N/A') String original,
    Measure? measures, // Made nullable to handle missing cases
  }) = _Ingredients;
  factory Ingredients.fromJson(Map<String, dynamic> json) =>
      _$IngredientsFromJson(json);
}

@freezed
class Measure with _$Measure {
  const factory Measure({
    required UnitMeasure metric,
    required UnitMeasure us,
  }) = _Measure;
  factory Measure.fromJson(Map<String, dynamic> json) =>
      _$MeasureFromJson(json);
}

@freezed
class UnitMeasure with _$UnitMeasure {
  const factory UnitMeasure({
    required double amount,
    required String unitShort,
    @Default('N/A') String unitLong, // Added missing field
  }) = _UnitMeasure;
  factory UnitMeasure.fromJson(Map<String, dynamic> json) =>
      _$UnitMeasureFromJson(json);
}
