import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';
import 'package:myrecipeapp/presentation/home/recipe_category/constants.dart';
import 'package:myrecipeapp/presentation/home/recipe_category/recipe_category_cubit.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(width: 12.0),
      scrollDirection: Axis.horizontal,
      itemCount: icons.length,
      itemBuilder: (BuildContext context, int index) =>
          BlocBuilder<RecipeCategoryCubit, int>(
        builder: (context, _) {
          final cubit = context.read<RecipeCategoryCubit>();
          return GestureDetector(
            onTap: () => index == cubit.state
                ? null
                : context.read<RecipeCategoryCubit>().onItemPressed(index),
            child: _CategoryItem(
              category: category[index],
              isActive: index == cubit.state,
              img: icons[index],
            ),
          );
        },
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final String img;
  final String category;
  final bool isActive;

  const _CategoryItem({
    super.key,
    required this.category,
    required this.isActive,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isActive ? Palette.primaryGreen : Palette.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      width: 78.0,
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            img,
            height: 30.0,
            width: 30.0,
          ),
          const SizedBox(height: 4.0),
          Flexible(
            flex: 1,
            child: Text(
              category,
              style: context.appTheme.bodySmall
                  .withColor(
                    isActive ? Palette.white : Palette.darkGray,
                  )
                  .copyWith(fontSize: 10.0),
            ),
          )
        ],
      ),
    );
  }
}
