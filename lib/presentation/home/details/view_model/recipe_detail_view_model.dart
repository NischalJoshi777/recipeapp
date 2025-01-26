import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_detail_view_model.freezed.dart';

@freezed
class RecipeDetailVM with _$RecipeDetailVM {
  const factory RecipeDetailVM({
    required bool isKetogenic,
    required String instructions,
    required String summary,
    required int id,
    required String title,
    required String image,
    required int cookingMinutes,
    required bool isVegan,
    required bool isVegetarian,
    required bool isDairyFree,
    required bool isGlutenFree,
    required int aggregatedLikes,
    required List<String> dishTypes,
    required List<IngredientsVM> ingredients,
    required int servingSize,
    required double healthScore,
    required CaloricBreakDownVM caloricBreakDown,
    required double calories,
    @Default(false) bool isFavorite,
  }) = _RecipeVM;
}

@freezed
class IngredientsVM with _$IngredientsVM {
  const factory IngredientsVM({
    required String image,
    required String original,
    required MeasureVM measure,
  }) = _IngredientsVM;
}

@freezed
class CaloricBreakDownVM with _$CaloricBreakDownVM {
  const factory CaloricBreakDownVM({
    required double percentProtein,
    required double percentFat,
    required double percentCarbs,
  }) = _CaloricBreakDownVM;
}

@freezed
class MeasureVM with _$MeasureVM {
  const factory MeasureVM({
    required double amount,
    required String unitLong,
  }) = _MeasureVM;
}
