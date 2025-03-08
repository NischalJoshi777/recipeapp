part of 'recipe_list_cubit.dart';

@freezed
class RecipeListState with _$RecipeListState {
  const factory RecipeListState({
    @Default(0) int offset,
    @Default('') String query,
    @Default('') String category,
    @Default(true) isFirstFetch,
    @Default([]) List<RecipeVM> recipes,
    @Default(RecipeListStatus.loading()) RecipeListStatus listStatus,
  }) = _RecipeListState;
}

@freezed
class RecipeListStatus with _$RecipeListStatus {
  const factory RecipeListStatus.empty() = RecipeListStatusEmpty;
  const factory RecipeListStatus.loading() = RecipeListStatusLoading;
  const factory RecipeListStatus.loaded() = RecipeListStatusLoaded;
  const factory RecipeListStatus.error({
    required String message,
  }) = RecipeListStatusError;
}
