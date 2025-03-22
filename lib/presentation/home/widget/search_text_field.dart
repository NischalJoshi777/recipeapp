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
    return Material(
      borderRadius: BorderRadius.circular(30.0),
      color: Palette.darkGray,
      elevation: 4.0,
      child: TextField(
        onSubmitted: (value) {
          context.read<RecipeListCubit>().onQueryChange(value);
        },
        style: context.appTheme.bodyRegular,
        cursorHeight: 18.0,
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          prefixIcon: const Icon(
            Icons.search_outlined,
            color: Palette.darkGray,
            size: 20.0,
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              _openFilter(context);
            },
            child: const Icon(
              Icons.filter_alt_off,
              size: 20.0,
              color: Palette.primaryGreen,
            ),
          ),
          hintText: 'Search any recipe',
          fillColor: Colors.white,
          hintStyle: context.appTheme.bodyRegular.copyWith(height: 0),
        ),
      ),
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
