import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';
import 'package:myrecipeapp/presentation/home/recipe_list/recipe_list_cubit/recipe_list_cubit.dart';

import 'filter/filter_content.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 2,
          child: Material(
            borderRadius: BorderRadius.circular(30.0),
            color: Palette.darkGray,
            elevation: 4.0,
            child: TextField(
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
              },
              onSubmitted: (value) {
                context.read<RecipeListCubit>().onQueryChange(value);
              },
              style: context.appTheme.bodyRegular,
              cursorHeight: 18.0,
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                border: InputBorder.none,
                prefixIcon: const Icon(
                  Icons.search_outlined,
                  color: Palette.darkGray,
                  size: 20.0,
                ),
                hintText: 'Search any recipe',
                fillColor: Colors.white,
                hintStyle: context.appTheme.bodyRegular.copyWith(height: 0),
              ),
            ),
          ),
        ),
        const SizedBox(width: 4.0),
        BlocBuilder<RecipeListCubit, RecipeListState>(
          builder: (context, state) {
            return Stack(
              children: [
                FloatingActionButton.small(
                  splashColor: Palette.primaryGreen,
                  backgroundColor: Palette.white,
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      30.0,
                    ),
                  ),
                  onPressed: () {
                    _openFilter(context);
                  },
                  child: const Icon(
                    size: 20.0,
                    color: Palette.darkGray,
                    Icons.tune_rounded,
                  ),
                ),
                if (state.filter.filterCount > 0)
                  Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.red.shade400,
                      radius: 10.0,
                      child: Text(
                        state.filter.filterCount.toString(),
                        style: context.appTheme.bodySmall.withColor(
                          Colors.white,
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}

void _openFilter(BuildContext context) {
  Platform.isIOS ? _showModalSheet(context) : _showAlertDialog(context);
}

void _showAlertDialog(BuildContext context) {
  showAdaptiveDialog(
    context: context,
    builder: (_) => BlocProvider.value(
      value: context.read<RecipeListCubit>(),
      child: const FilterContent(),
    ),
  );
}

void _showModalSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    backgroundColor: Colors.transparent,
    builder: (_) => BlocProvider.value(
      value: context.read<RecipeListCubit>(),
      child: const FilterContent(),
    ),
  );
}

class CustomCheckBoxItem extends StatelessWidget {
  final String title;
  final bool value;

  const CustomCheckBoxItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: value,
          onChanged: (value) {},
        ),
        const SizedBox(width: 2.0),
        Text(
          title,
          style: context.appTheme.bodyRegular.semiBold,
        ),
      ],
    );
  }
}
