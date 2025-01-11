import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_view_model.freezed.dart';

@freezed
class RecipeVM with _$RecipeVM {
  const factory RecipeVM({
    required int id,
    required String title,
    required String chef,
    required String image,
    required int cookingMinutes,
  }) = _RecipeVM;
}
