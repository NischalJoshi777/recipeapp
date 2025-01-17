import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myrecipeapp/data/services/recipe_service.dart';
import 'package:myrecipeapp/presentation/details/view_model/recipe_detail_view_model.dart';

part 'detail_cubit.freezed.dart';
part 'detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  final RecipeService recipeService;

  DetailCubit({
    required this.recipeService,
  }) : super(const DetailState.loading());

  Future<void> fetchRecipeDetails(int id) async {
    try {
      emit(const DetailState.loading());
      final response = await recipeService.fetchRecipeDetails(id: id);
      emit(
        DetailState.loaded(
          RecipeDetailVM(
            summary: response.summary,
            aggregatedLikes: response.aggregatedLikes,
            cookingMinutes: response.preparationMinutes,
            isVegetarian: response.vegetarian,
            isVegan: response.vegan,
            id: response.id,
            title: response.title,
            image: response.image ?? '',
            isDairyFree: response.dairyFree,
            isGlutenFree: response.glutenFree,
            dishTypes: response.dishTypes,
            ingredients: response.extendedIngredients
                .map((e) => IngredientsVM(
                      image: e.image ?? '',
                      original: e.original,
                    ))
                .toList(),
          ),
        ),
      );
    } catch (e) {
      emit(DetailState.error(message: e.toString()));
    }
  }
}
