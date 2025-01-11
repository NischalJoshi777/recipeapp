import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myrecipeapp/data/services/recipe_service.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/view_model/recipe_view_model.dart';

part 'recipe_list_cubit.freezed.dart';
part 'recipe_list_state.dart';

class RecipeListCubit extends Cubit<RecipeListState> {
  final RecipeService recipeService;

  RecipeListCubit({
    required this.recipeService,
  }) : super(const RecipeListState(listStatus: RecipeListStatus.loading()));

  Future<void> fetchRecipeListBasedOnCategory({
    String category = "lunch",
  }) async {
    try {
      final recipes =
          await recipeService.fetchRecipesByCategory(type: category);
      emit(
        state.copyWith(
          recipes: recipes.results
              .map((recipe) => RecipeVM(
                    id: recipe.id,
                    title: recipe.title,
                    chef: "-",
                    image: recipe.image,
                    cookingMinutes: recipe.readyInMinutes ?? 0,
                  ))
              .toList(),
          listStatus: const RecipeListStatus.loaded(),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          listStatus: RecipeListStatus.error(message: e.toString()),
        ),
      );
    }
  }
}
