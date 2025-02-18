part of 'bookmark_list_cubit.dart';

@freezed
class BookmarkListState with _$BookmarkListState {
  const factory BookmarkListState.loading() = BookmarkListStateLoading;

  const factory BookmarkListState.loaded(List<DetailCubit> cubit) =
      BookmarkListStateLoaded;

  const factory BookmarkListState.error({
    required String message,
  }) = BookmarkListStateError;
}
