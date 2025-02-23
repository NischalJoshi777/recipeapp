import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myrecipeapp/data/services/recipe_details_service/recipe_details_service.dart';
import 'package:myrecipeapp/data/services/recipe_service.dart';
import 'package:myrecipeapp/presentation/bookmarks/bookmark_viewmodel.dart';

part 'bookmark_list_cubit.freezed.dart';
part 'bookmark_list_states.dart';

class BookmarkListCubit extends Cubit<BookmarkListState> {
  final RecipeService recipeService;
  final RecipeDetailService recipeDetailService;

  BookmarkListCubit({
    required this.recipeService,
    required this.recipeDetailService,
  }) : super(const BookmarkListState.loading());

  List<BookmarkViewModel> _bookmark = [];

  Future<void> fetchLocalRecipes() async {
    try {
      emit(const BookmarkListState.loading());
      final bookmarks = await recipeService.fetchLocalRecipes();
      _bookmark = bookmarks
          .map(
            (bookmark) => BookmarkViewModel(
              id: bookmark.id,
              image: bookmark.image,
              title: bookmark.title,
              summary: bookmark.summary,
              totalPrepTime:
                  bookmark.cookingMinutes + bookmark.preparationMinutes,
              healthScore: bookmark.healthScore,
              dishTypes: bookmark.dishTypes,
            ),
          )
          .toList();
      emit(
        BookmarkListState.loaded(_bookmark),
      );
    } catch (e) {
      emit(BookmarkListState.error(message: e.toString()));
    }
  }

  Future<void> deleteBookMark(BookmarkViewModel bookmark) async {
    try {
      _bookmark.remove(bookmark);
      await recipeDetailService.removeFromFavorites(
        key: bookmark.id.toString(),
      );
      await fetchLocalRecipes();
    } catch (e) {
      emit(BookmarkListState.deleteError(_bookmark));
    }
  }
}
