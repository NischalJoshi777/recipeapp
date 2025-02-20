import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'recipe_bookmarks.freezed.dart';
part 'recipe_bookmarks.g.dart';

@freezed
class RecipeBookmark with _$RecipeBookmark {
  @HiveType(typeId: 0)
  const factory RecipeBookmark({
    @HiveField(0) required int preparationMinutes, //
    @HiveField(1) required int cookingMinutes, //
    @HiveField(2) required int aggregateLikes, //
    @HiveField(3) required List<String> dishTypes, //
    @HiveField(4) required String summary, //
    @HiveField(5) required String title, //
    @HiveField(6) required String image, //
    @HiveField(7) required double healthScore, //
    @HiveField(10) required int id,
  }) = _RecipeBookmark;
}
