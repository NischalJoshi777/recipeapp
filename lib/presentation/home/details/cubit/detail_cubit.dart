import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myrecipeapp/data/model/recipe_details/recipe_details.dart';
import 'package:myrecipeapp/data/services/recipe_details_service/recipe_details_service.dart';
import 'package:myrecipeapp/presentation/home/details/view_model/recipe_detail_view_model.dart';

part 'detail_cubit.freezed.dart';
part 'detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  final RecipeDetailService recipeService;

  DetailCubit({
    required this.recipeService,
  }) : super(const DetailState(detailsDataState: DetailsDataState.loading()));

  RecipeDetails? _response;

  Future<void> fetchRecipeDetails(int id) async {
    try {
      emit(state.copyWith(detailsDataState: const DetailsDataState.loading()));

      ///fetching from local if available
      final localResponse =
          await recipeService.fetchFromLocal(key: id.toString());
      final isFavorite = localResponse != null;
      if (isFavorite) {
        _response = localResponse;
      } else {
        /// Fetch from remote if not in local storage
        _response = await recipeService.fetchRecipeDetails(id: id);
      }

      /// Emitting loaded state
      _emitLoadedState(isFavorite: isFavorite);
    } catch (e) {
      emit(
        state.copyWith(
          detailsDataState: DetailsDataState.error(message: e.toString()),
        ),
      );
    }
  }

  void _emitLoadedState({required bool isFavorite}) {
    if (_response == null) return;
    final detailVM = RecipeDetailVM(
      instructions: _response!.instructions,
      summary: _response!.summary,
      aggregatedLikes: _response!.aggregateLikes,
      cookingMinutes: _response!.preparationMinutes + _response!.cookingMinutes,
      isVegetarian: _response!.vegetarian,
      isKetogenic: _response!.ketogenic,
      servingSize: _response!.servings ?? 0,
      isVegan: _response!.vegan,
      id: _response!.id,
      title: _response!.title,
      image: _response!.image ?? '',
      isDairyFree: _response!.dairyFree,
      isGlutenFree: _response!.glutenFree,
      dishTypes: _response!.dishTypes,
      healthScore: _response!.healthScore,
      caloricBreakDown: CaloricBreakDownVM(
        percentProtein: _response!.nutrition.caloricBreakdown.percentProtein,
        percentFat: _response!.nutrition.caloricBreakdown.percentFat,
        percentCarbs: _response!.nutrition.caloricBreakdown.percentCarbs,
      ),
      ingredients: _response!.extendedIngredients.map((e) {
        return IngredientsVM(
          image: e.image ?? '',
          original: e.name,
          measure: MeasureVM(
            amount: e.measures.metric.amount,
            unitLong: e.measures.metric.unitShort,
          ),
        );
      }).toList(),
      calories: _response!.nutrition.nutrients[0].amount,
    );

    emit(state.copyWith(
      detailsDataState: const DetailsDataState.loaded(),
      detailVM: detailVM,
      isAddedToFavorites: isFavorite,
    ));
  }

  Future<void> addToFavorites(String id) async {
    final isAdded = state.isAddedToFavorites;
    print('**old state*');
    print(isAdded);
    try {
      if (_response != null) {
        if (isAdded) {
          _handleUnFavoriteCase(id, !isAdded);
        } else {
          _handleFavoriteCase(id, !isAdded);
        }
      }
      return;
    } catch (e) {
      emit(
        state.copyWith(
            isAddedToFavorites: isAdded,
            detailsDataState: DetailsDataState.error(message: e.toString())),
      );
    }
  }

  Future<void> _handleFavoriteCase(String id, bool val) async {
    emit(state.copyWith(isAddedToFavorites: val));
    await recipeService.addToFavorites(
      key: id,
      recipeDetails: _response!,
    );
  }

  Future<void> _handleUnFavoriteCase(String id, bool val) async {
    emit(state.copyWith(isAddedToFavorites: val));
    await recipeService.removeFromFavorites(
      key: id,
    );
  }
}
