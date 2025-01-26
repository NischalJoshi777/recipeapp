part of 'detail_cubit.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    @Default(false) bool isAddedToFavorites,
    RecipeDetailVM? detailVM,
    @Default(DetailsDataState.loading()) DetailsDataState detailsDataState,
  }) = _DetailStateError;
}

@freezed
class DetailsDataState with _$DetailsDataState {
  const factory DetailsDataState.loading() = _DetailsDataStateLoading;

  const factory DetailsDataState.loaded() = _DetailsDataStateLoaded;

  const factory DetailsDataState.error({
    required String message,
    @Default(false) bool isAddToFavorites,
  }) = _DetailsDataStateError;
}
