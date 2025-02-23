import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';
import 'package:myrecipeapp/data/services/recipe_details_service/recipe_details_service.dart';
import 'package:myrecipeapp/data/services/recipe_service.dart';
import 'package:myrecipeapp/di.dart';
import 'package:myrecipeapp/presentation/bookmarks/bookmark_card.dart';
import 'package:myrecipeapp/presentation/bookmarks/bookmark_list_cubit.dart';
import 'package:myrecipeapp/presentation/bookmarks/bookmark_viewmodel.dart';
import 'package:myrecipeapp/presentation/home/widget/header_text.dart';
import 'package:myrecipeapp/presentation/home/widget/search_text_field.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BookmarkListCubit(
        recipeService: getIt<RecipeService>(),
        recipeDetailService: getIt<RecipeDetailService>(),
      )..fetchLocalRecipes(),
      child: SafeArea(
        child: Scaffold(
          body: BlocBuilder<BookmarkListCubit, BookmarkListState>(
            builder: (context, state) {
              return RefreshIndicator(
                onRefresh: () =>
                    context.read<BookmarkListCubit>().fetchLocalRecipes(),
                child: CustomScrollView(
                  slivers: [
                    const SliverAppBar(
                      toolbarHeight: 120.0,
                      backgroundColor: Palette.lightGray,
                      floating: true,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 12.0),
                          HeaderText(text: 'Your Bookmarks'),
                          SizedBox(height: 12.0),
                          SearchTextField(),
                        ],
                      ),
                    ),
                    BlocBuilder<BookmarkListCubit, BookmarkListState>(
                      builder: (context, state) {
                        return state.when(
                          loading: () => const SliverToBoxAdapter(
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          loaded: (bookmarks) =>
                              BookmarkListView(bookmarks: bookmarks),
                          error: (message) {
                            return SliverToBoxAdapter(
                              child: Text(message),
                            );
                          },
                          deleteError: (bookmarks) => BookmarkListView(
                            bookmarks: bookmarks,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class BookmarkListView extends StatelessWidget {
  final List<BookmarkViewModel> bookmarks;

  const BookmarkListView({
    super.key,
    required this.bookmarks,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: bookmarks.length,
        (context, index) => Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: () {
              context.push('/details', extra: bookmarks[index].id);
            },
            child: Slidable(
              key: Key(bookmarks[index].title),
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        context
                            .read<BookmarkListCubit>()
                            .deleteBookMark(bookmarks[index]);
                      },
                      child: Card(
                        color: Colors.red.shade300,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.delete, color: Colors.black),
                              Text(
                                'Delete',
                                style: context.appTheme.bodySmall
                                    .withColor(Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              child: BookmarkCard(
                bookmark: bookmarks[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
