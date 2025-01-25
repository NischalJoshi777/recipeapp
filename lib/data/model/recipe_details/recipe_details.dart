import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'recipe_details.freezed.dart';
part 'recipe_details.g.dart';

@freezed
class RecipeDetails with _$RecipeDetails {
  @HiveType(typeId: 0) // Hive adapter type ID
  const factory RecipeDetails({
    @HiveField(0) required int id,
    @HiveField(1) @Default(false) bool vegan,
    @HiveField(2) @Default(false) bool vegetarian,
    @HiveField(3) @Default(false) bool dairyFree,
    @HiveField(4) @Default(false) bool glutenFree,
    @HiveField(5) @Default(false) bool ketogenic,
    @HiveField(6) @Default(0) int preparationMinutes,
    @HiveField(7) @Default(0) int cookingMinutes,
    @HiveField(8) @Default(0) int aggregateLikes,
    @HiveField(9) @Default([]) List<String> dishTypes,
    @HiveField(10) @Default('N/A') String summary,
    @HiveField(11) @Default('N/A') String title,
    @HiveField(12) required String image,
    @HiveField(13) required String instructions,
    @HiveField(14) @Default(0.0) double healthScore,
    @HiveField(15) required int servings,
    @HiveField(16) @Default([]) List<Ingredients> extendedIngredients,
    @HiveField(17) required Nutrition nutrition,
  }) = _RecipeDetails;

  factory RecipeDetails.fromJson(Map<String, dynamic> json) =>
      _$RecipeDetailsFromJson(json);
}

@freezed
class Nutrition with _$Nutrition {
  @HiveType(typeId: 1) // Hive adapter type ID
  const factory Nutrition({
    @HiveField(0) required CaloricBreakDown caloricBreakdown,
    @HiveField(1) @Default([]) List<Nutrients> nutrients,
  }) = _Nutrition;

  factory Nutrition.fromJson(Map<String, dynamic> json) =>
      _$NutritionFromJson(json);
}

@freezed
class Nutrients with _$Nutrients {
  @HiveType(typeId: 2) // Hive adapter type ID
  const factory Nutrients({
    @HiveField(0) required String name,
    @HiveField(1) required double amount,
    @HiveField(2) required String unit,
  }) = _Nutrients;

  factory Nutrients.fromJson(Map<String, dynamic> json) =>
      _$NutrientsFromJson(json);
}

@freezed
class CaloricBreakDown with _$CaloricBreakDown {
  @HiveType(typeId: 3) // Hive adapter type ID
  const factory CaloricBreakDown({
    @HiveField(0) required double percentProtein,
    @HiveField(1) required double percentFat,
    @HiveField(2) required double percentCarbs,
  }) = _CaloricBreakDown;

  factory CaloricBreakDown.fromJson(Map<String, dynamic> json) =>
      _$CaloricBreakDownFromJson(json);
}

@freezed
class Ingredients with _$Ingredients {
  @HiveType(typeId: 4) // Hive adapter type ID
  const factory Ingredients({
    @HiveField(0) String? image,
    @HiveField(1) @Default('N/A') String name,
    @HiveField(2)
    required Measure measures, // Made nullable to handle missing cases
  }) = _Ingredients;

  factory Ingredients.fromJson(Map<String, dynamic> json) =>
      _$IngredientsFromJson(json);
}

@freezed
class Measure with _$Measure {
  @HiveType(typeId: 5) // Hive adapter type ID
  const factory Measure({
    @HiveField(0) required UnitMeasure metric,
    @HiveField(1) required UnitMeasure us,
  }) = _Measure;

  factory Measure.fromJson(Map<String, dynamic> json) =>
      _$MeasureFromJson(json);
}

@freezed
class UnitMeasure with _$UnitMeasure {
  @HiveType(typeId: 6) // Hive adapter type ID
  const factory UnitMeasure({
    @HiveField(0) required double amount,
    @HiveField(1) required String unitShort,
    @Default('N/A') String unitLong, // Added missing field
  }) = _UnitMeasure;

  factory UnitMeasure.fromJson(Map<String, dynamic> json) =>
      _$UnitMeasureFromJson(json);
}
