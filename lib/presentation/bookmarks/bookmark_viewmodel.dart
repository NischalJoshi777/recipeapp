import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark_viewmodel.freezed.dart';

@freezed
class BookmarkViewModel with _$BookmarkViewModel {
  const factory BookmarkViewModel({
    required int id,
    required String image,
    required String title,
    required String summary,
    required int totalPrepTime,
    required double healthScore,
    required List<String> dishTypes,
  }) = _BookmarkViewModel;
}
