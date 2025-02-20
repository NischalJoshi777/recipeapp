import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/data/services/recipe_service.dart';
import 'package:myrecipeapp/di.dart';
import 'package:myrecipeapp/presentation/bookmarks/bookmark_list_cubit.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BookmarkListCubit(
        recipeService: getIt<RecipeService>(),
      )..fetchLocalRecipes(),
      child: Scaffold(
        body: BlocBuilder<BookmarkListCubit, BookmarkListState>(
          builder: (context, state) {
            return const Center(child: Text('Bookmarks Screen'));
          },
        ),
      ),
    );
  }
}
