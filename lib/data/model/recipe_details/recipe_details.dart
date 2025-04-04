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
    @Default(false) bool ketogenic,
    @Default(0) int preparationMinutes, //
    @Default(0) int cookingMinutes, //
    @Default(0) int aggregateLikes, //
    @Default([]) List<String> dishTypes, //
    @Default('N/A') String summary, //
    @Default('N/A') String title, //
    required String image, //
    required String instructions,
    @Default(0.0) double healthScore, //
    required int servings,
    @Default([]) List<Ingredients> extendedIngredients,
    required Nutrition nutrition,
  }) = _RecipeDetails;

  factory RecipeDetails.fromJson(Map<String, dynamic> json) =>
      _$RecipeDetailsFromJson(json);
}

@freezed
class Nutrition with _$Nutrition {
  const factory Nutrition({
    required CaloricBreakDown caloricBreakdown,
    @Default([]) List<Nutrients> nutrients,
  }) = _Nutrition;

  factory Nutrition.fromJson(Map<String, dynamic> json) =>
      _$NutritionFromJson(json);
}

@freezed
class Nutrients with _$Nutrients {
  const factory Nutrients({
    required String name,
    required double amount,
    required String unit,
  }) = _Nutrients;

  factory Nutrients.fromJson(Map<String, dynamic> json) =>
      _$NutrientsFromJson(json);
}

@freezed
class CaloricBreakDown with _$CaloricBreakDown {
  const factory CaloricBreakDown({
    required double percentProtein,
    required double percentFat,
    required double percentCarbs,
  }) = _CaloricBreakDown;

  factory CaloricBreakDown.fromJson(Map<String, dynamic> json) =>
      _$CaloricBreakDownFromJson(json);
}

@freezed
class Ingredients with _$Ingredients {
  const factory Ingredients({
    String? image,
    @Default('N/A') String name,
    required Measure measures, // Made nullable to handle missing cases
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
