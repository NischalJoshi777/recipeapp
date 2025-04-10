import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/data/services/recipe_service.dart';
import 'package:myrecipeapp/di.dart';
import 'package:myrecipeapp/presentation/home/recipe_category/category_list.dart';
import 'package:myrecipeapp/presentation/home/recipe_category/recipe_category_cubit.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/recipe_list_cubit/recipe_list_cubit.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/widgets/recipe_list.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/widgets/recipe_shimmer_item.dart';
import 'package:myrecipeapp/presentation/home/widget/header_text.dart';
import 'package:myrecipeapp/presentation/home/widget/search_text_field.dart';
import 'package:myrecipeapp/presentation/home/widget/see_all_text_button.dart';
import 'package:myrecipeapp/presentation/home/widget/welcome_text.dart';
import 'package:myrecipeapp/presentation/profile/cubit/profile_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RecipeCategoryCubit(),
      child: Builder(
        builder: (context) {
          return BlocProvider(
            create: (_) => RecipeListCubit(
              recipeService: getIt<RecipeService>(),
              categoryCubit: context.read<RecipeCategoryCubit>(),
            )..fetchRecipeListBasedOnCategory(),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12.0,
                children: [
                  const SizedBox(height: 10.0),
                  const _Header(),
                  const SizedBox(),
                  SearchTextField(),
                  const HeaderText(text: 'Categories'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .075,
                    child: const CategoriesList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const HeaderText(text: 'Recommendations'),
                      SeeAllTextButton(
                        onPressed: () {},
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .30,
                    child: const RecipeList(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Flexible(
          flex: 2,
          child: WelcomeText(),
        ),
        const SizedBox(width: 4.0),
        BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
          return state.profileLoadStatus.when(
            loading: () => const CircleAvatar(
              child: ShimmerItem(width: 10, height: 10),
            ),
            error: () => const Icon(Icons.error),
            loaded: () => ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Image.network(
                height: 50.0,
                width: 50.0,
                fit: BoxFit.cover,
                state.profileModel.photoUrl ?? '',
              ),
            ),
          );
        }),
      ],
    );
  }
}
