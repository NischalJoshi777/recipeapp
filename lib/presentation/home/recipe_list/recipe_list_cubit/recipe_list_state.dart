part of 'recipe_list_cubit.dart';

@freezed
class RecipeListState with _$RecipeListState {
  factory RecipeListState({
    @Default(0) int offset,
    @Default('') String query,
    @Default('') String category,
    @Default(true) isFirstFetch,
    @Default([]) List<RecipeVM> recipes,
    @Default(Filter()) Filter filter,
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

@freezed
class Filter with _$Filter {
  const Filter._();

  const factory Filter({
    int? maxCalorie,
    @Default(<String>{}) Set<String> dietaryPreference,
    @Default(<String>{}) Set<String> intolerances,
    @Default(<String>{}) Set<String> cuisinePreferences,
  }) = _Filter;

  int get filterCount =>
      dietaryPreference.length +
      cuisinePreferences.length +
      intolerances.length +
      (maxCalorie != null ? 1 : 0);

  String get diets => dietaryPreference.join(',');

  String get cuisines => cuisinePreferences.join(',');

  String get intolerancesString => intolerances.join(',');
}
