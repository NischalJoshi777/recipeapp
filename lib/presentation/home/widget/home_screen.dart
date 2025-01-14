import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/data/services/recipe_service.dart';
import 'package:myrecipeapp/di.dart';
import 'package:myrecipeapp/presentation/home/recipe_category/category_list.dart';
import 'package:myrecipeapp/presentation/home/recipe_category/recipe_category_cubit.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/recipe_list_cubit/recipe_list_cubit.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/widgets/recipe_list.dart';
import 'package:myrecipeapp/presentation/home/widget/header_text.dart';
import 'package:myrecipeapp/presentation/home/widget/search_text_field.dart';
import 'package:myrecipeapp/presentation/home/widget/see_all_text_button.dart';
import 'package:myrecipeapp/presentation/home/widget/welcome_text.dart';

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
                spacing: 12.0,
                children: [
                  const SizedBox(height: 10.0),
                  const _Header(),
                  const SizedBox(),
                  const SearchTextField(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const HeaderText(text: 'Categories'),
                      SeeAllTextButton(
                        onPressed: () {},
                      )
                    ],
                  ),
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
                    height: MediaQuery.of(context).size.height * .50,
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
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 2,
          child: WelcomeText(),
        ),
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Palette.primaryGreen,
        ),
      ],
    );
  }
}
