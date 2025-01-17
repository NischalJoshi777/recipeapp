import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_detail_view_model.freezed.dart';

@freezed
class RecipeDetailVM with _$RecipeDetailVM {
  const factory RecipeDetailVM({
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
  }) = _RecipeVM;
}

@freezed
class IngredientsVM with _$IngredientsVM {
  const factory IngredientsVM({
    required String image,
    required String original,
  }) = _IngredientsVM;
}
