import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myrecipeapp/data/services/recipe_service.dart';
import 'package:myrecipeapp/presentation/home/recipe_category/constants.dart';
import 'package:myrecipeapp/presentation/home/recipe_category/recipe_category_cubit.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/view_model/recipe_view_model.dart';

part 'recipe_list_cubit.freezed.dart';
part 'recipe_list_state.dart';

class RecipeListCubit extends Cubit<RecipeListState> {
  final RecipeService recipeService;
  final RecipeCategoryCubit categoryCubit;

  RecipeListCubit({
    required this.recipeService,
    required this.categoryCubit,
  }) : super(const RecipeListState(listStatus: RecipeListStatus.loading())) {
    categoryCubit.stream.listen(
      (data) {
        fetchRecipeListBasedOnCategory(
          category: category[data],
          query: state.query,
        );
      },
    );
  }

  ///page being fetched
  int _offset = 0;

  ///number of items in the page
  final int _number = 10;

  ///The recipe list to be rendered
  List<RecipeVM> recommendations = [];

  bool get hasMore => _hasMore;

  bool _hasMore = true;

  bool get hasError => state.listStatus is RecipeListStatusError;

  /// current selected category
  // String _currentCategory = "";

  Future<void> fetchRecipeListBasedOnCategory({
    String category = "lunch",
    String query = "",
  }) async {
    try {
      if (state.category != category.toLowerCase() || state.query != query) {
        recommendations.clear();
        _offset = 0;
      }
      emit(
        state.copyWith(
          category: category.toLowerCase(),
          query: query.toLowerCase(),
          isFirstFetch: _offset == 0,
          listStatus: const RecipeListStatus.loading(),
        ),
      );

      final recipes = await recipeService.fetchRecipesByCategory(
        type: state.category.toLowerCase(),
        offset: _offset,
        number: _number,
        query: state.query.toLowerCase(),
      );
      if (recipes.totalResults == 0) {
        emit(
          state.copyWith(
            listStatus: const RecipeListStatus.empty(),
          ),
        );
        return;
      }

      /// If fewer items are returned than expected, no more data is available.
      if (recipes.results.length < _number) {
        _hasMore = false;
      }
      recommendations.addAll(
        recipes.results
            .map((recipe) => RecipeVM(
                  id: recipe.id,
                  title: recipe.title,
                  chef: "-",
                  image: recipe.image,
                  cookingMinutes: recipe.readyInMinutes ?? 0,
                ))
            .toList(),
      );
      emit(
        state.copyWith(
          isFirstFetch: _offset == 0,
          recipes: recommendations,
          listStatus: const RecipeListStatus.loaded(),
        ),
      );

      ///offset should be incremented to retrieve new page;
      _offset++;
    } catch (e) {
      emit(
        state.copyWith(
          isFirstFetch: _offset == 0,
          listStatus: RecipeListStatus.error(message: e.toString()),
        ),
      );
    }
  }
}
