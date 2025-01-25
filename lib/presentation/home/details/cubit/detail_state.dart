part of 'detail_cubit.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState.loading() = _DetailStateLoading;
  const factory DetailState.loaded(RecipeDetailVM detailVM) =
      _DetailStateLoaded;
  const factory DetailState.error({required String message}) =
      _DetailStateError;
}
