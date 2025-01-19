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
            instructions: response.instructions,
            summary: response.summary,
            aggregatedLikes: response.aggregateLikes,
            cookingMinutes: response.preparationMinutes,
            isVegetarian: response.vegetarian,
            isKetogenic: response.ketogenic,
            servingSize: response.servings ?? 0,
            isVegan: response.vegan,
            id: response.id,
            title: response.title,
            image: response.image ?? '',
            isDairyFree: response.dairyFree,
            isGlutenFree: response.glutenFree,
            dishTypes: response.dishTypes,
            healthScore: response.healthScore,
            ingredients: response.extendedIngredients
                .map(
                  (e) => IngredientsVM(
                    image: e.image ?? '',
                    original: e.name,
                    measure: MeasureVM(
                      amount: e.measures.metric.amount,
                      unitLong: e.measures.metric.unitShort,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      );
    } catch (e) {
      emit(DetailState.error(message: e.toString()));
    }
  }
}
