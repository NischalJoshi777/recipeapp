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
  }) : super(RecipeListState(listStatus: const RecipeListStatus.loading())) {
    categoryCubit.stream.listen(
      (data) {
        emit(state.copyWith(category: category[data]));
        _reset();
        fetchRecipeListBasedOnCategory();
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
  Future<void> fetchRecipeListBasedOnCategory() async {
    try {
      _emitInitialLoading();
      final recipes = await recipeService.fetchRecipesByCategory(
        type: state.category.toLowerCase(),
        offset: _offset,
        number: _number,
        query: state.query.toLowerCase(),
        cuisine: state.filter.cuisines,
        intolerances: state.filter.intolerancesString,
        dietaryPreferences: state.filter.diets,
        maxCalorie: state.filter.maxCalorie,
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

  void _reset() {
    recommendations.clear();
    _offset = 0;
    _hasMore = true;
  }

  void _emitInitialLoading() {
    emit(
      state.copyWith(
        isFirstFetch: _offset == 0,
        listStatus: const RecipeListStatus.loading(),
      ),
    );
  }

  // Generic method to toggle an item in a Set<String>
  Set<String> _toggleSetItem(Set<String> set, String item) {
    return set.contains(item)
        ? set.where((p) => p != item).toSet() // Remove item
        : {...set, item}; //returning a new set.
  }

  void toggleDietaryPreference(String newPreference) {
    final newPreferences = _toggleSetItem(
      state.filter.dietaryPreference,
      newPreference,
    );
    _reset();
    emit(
      state.copyWith(
        filter: state.filter.copyWith(dietaryPreference: newPreferences),
      ),
    );
  }

  void toggleCuisinePreference(String newCuisine) {
    final newCuisinePreference = _toggleSetItem(
      state.filter.cuisinePreferences,
      newCuisine,
    );
    _reset();
    emit(
      state.copyWith(
        filter: state.filter.copyWith(
          cuisinePreferences: newCuisinePreference,
        ),
      ),
    );
  }

  void toggleIntolerances(String newIntolerance) {
    final intolerances = _toggleSetItem(
      state.filter.intolerances,
      newIntolerance,
    );
    _reset();
    emit(
      state.copyWith(
        filter: state.filter.copyWith(
          intolerances: intolerances,
        ),
      ),
    );
  }

  void toggleCalorieChange(int maxCalorie) {
    _reset();
    emit(
      state.copyWith(
        filter: state.filter.copyWith(
          maxCalorie: maxCalorie,
        ),
      ),
    );
  }

  void clearFilter() {
    emit(state.copyWith(filter: const Filter()));
  }

  void onQueryChange(String query) {
    _reset();
    emit(state.copyWith(query: query));
    fetchRecipeListBasedOnCategory();
  }
}
