import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myrecipeapp/data/services/recipe_service.dart';
import 'package:myrecipeapp/presentation/home/details/cubit/detail_cubit.dart';

part 'bookmark_list_cubit.freezed.dart';
part 'bookmark_list_states.dart';

class BookmarkListCubit extends Cubit<BookmarkListState> {
  final RecipeService recipeService;

  BookmarkListCubit({
    required this.recipeService,
  }) : super(const BookmarkListState.loading()) {
    fetchLocalRecipes();
  }

  Future<void> fetchLocalRecipes() async {
    emit(const BookmarkListState.loading());
    final value = await recipeService.fetchLocalRecipes();
    // emit(BookmarkListState.loaded(DetailCubit()));
  }
}
