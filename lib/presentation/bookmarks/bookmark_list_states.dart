part of 'bookmark_list_cubit.dart';

@freezed
class BookmarkListState with _$BookmarkListState {
  const factory BookmarkListState.loading() = BookmarkListStateLoading;

  const factory BookmarkListState.loaded(List<BookmarkViewModel> bookmark) =
      BookmarkListStateLoaded;

  const factory BookmarkListState.error({
    required String message,
  }) = BookmarkListStateError;

  const factory BookmarkListState.deleteError(
      List<BookmarkViewModel> bookmark) = BookmarkListStateDeleteError;
}
