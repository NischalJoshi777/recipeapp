part of 'recipe_list_cubit.dart';

@freezed
class RecipeListState with _$RecipeListState {
  const factory RecipeListState({
    @Default(true) isFirstFetch,
    @Default([]) List<RecipeVM> recipes,
    @Default(RecipeListStatus.loading()) RecipeListStatus listStatus,
  }) = _RecipeListState;
}

@freezed
class RecipeListStatus with _$RecipeListStatus {
  const factory RecipeListStatus.loading() = _RecipeListStatusLoading;

  const factory RecipeListStatus.loaded() = _RecipeListStatusLoaded;

  const factory RecipeListStatus.error({
    required String message,
  }) = _RecipeListStatusError;
}
