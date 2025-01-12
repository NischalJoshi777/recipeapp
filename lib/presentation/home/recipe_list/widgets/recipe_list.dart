import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';
import 'package:myrecipeapp/presentation/home/recipe_category/constants.dart';
import 'package:myrecipeapp/presentation/home/recipe_category/recipe_category_cubit.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/recipe_list_cubit/recipe_list_cubit.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/view_model/recipe_view_model.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/widgets/recipe_shimmer_list.dart';
import 'package:myrecipeapp/presentation/home/widget/paginated_list_view.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeListCubit, RecipeListState>(
      builder: (cubit, state) {
        if (state.isFirstFetch) {
          return state.listStatus.when(
            loading: () => const RecipeShimmerList(),
            loaded: () => _RecipeListWidget(recipeList: state.recipes),
            error: (message) => Text(message),
          );
        }
        return _RecipeListWidget(recipeList: state.recipes);
      },
    );
  }
}

class _RecipeListWidget extends StatelessWidget {
  final List<RecipeVM> recipeList;

  const _RecipeListWidget({
    required this.recipeList,
  });

  @override
  Widget build(BuildContext context) {
    return PaginatedList(
      onLoadMore: () =>
          context.read<RecipeListCubit>().fetchRecipeListBasedOnCategory(
                category: category[context.read<RecipeCategoryCubit>().state],
              ),
      hasMore: context.read<RecipeListCubit>().hasMore,
      hasError: context.read<RecipeListCubit>().hasError,
      itemBuilder: (BuildContext context, int index) => _RecipeItem(
        image: recipeList[index].image,
        title: recipeList[index].title,
        chef: recipeList[index].chef,
        cookingMins: recipeList[index].cookingMinutes,
      ),
      itemCount: recipeList.length,
      loadingWidget: const RecipeShimmerItem(),
    );
  }
}

class _RecipeItem extends StatelessWidget {
  final String image;
  final String title;
  final String chef;
  final int cookingMins;

  const _RecipeItem({
    super.key,
    required this.image,
    required this.title,
    required this.chef,
    required this.cookingMins,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      width: 160.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4.0,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 2.0,
                bottom: 2.0,
                child: ClipRRect(
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: const BoxDecoration(
                      color: Palette.lightGray,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      spacing: 2.0,
                      children: [
                        const Icon(
                          Icons.watch_later_rounded,
                          color: Palette.accentOrangeLight,
                          size: 20.0,
                        ),
                        Text(
                          "$cookingMins mins",
                          style: context.appTheme.bodySmall
                              .withColor(Palette.primaryGreen),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            title,
            style: context.appTheme.bodyRegular.semiBold,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
