import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';
import 'package:myrecipeapp/presentation/home/widget/header_text.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                'assets/image/chickenparm.jpg',
              ),
            ],
          ),
          Positioned(
            top: 340.0,
            width: MediaQuery.of(context)
                .size
                .width, // Ensures it spans the full screen width
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(24.0)),
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(
                  vertical: 24.0,
                  horizontal: 12.0,
                ),
                child: const SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 20.0,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HeaderText(text: 'Chicken Parmesian'),
                              Text('By: Nischal Joshi'),
                            ],
                          ),
                          Icon(
                            Icons.star,
                            color: Palette.accentOrange,
                            size: 24.0,
                          )
                        ],
                      ),
                      Row(
                        spacing: 12.0,
                        children: [
                          IconWithText(
                              icon: Icons.watch_later_rounded,
                              text: '10 minutes'),
                          IconWithText(
                              icon: Icons.watch_later_rounded,
                              text: '10 minutes'),
                          IconWithText(
                              icon: Icons.watch_later_rounded,
                              text: '10 minutes'),
                        ],
                      ),
                      HeaderText(text: 'Description'),
                      HeaderText(text: 'Ingredients'),
                      IngredientsList(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconWithText({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 4.0,
      children: [
        Icon(
          icon,
          size: 24.0,
          color: Palette.darkGray,
        ),
        Text(
          text,
          style: context.appTheme.bodySmall,
        )
      ],
    );
  }
}

class IngredientsList extends StatelessWidget {
  const IngredientsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(spacing: 10.0, children: [
      ListTile(
        leading: Image.network(
          'https://spoonacular.com/cdn/ingredients_100x100/butter-sliced.jpg',
        ),
        title: Text('Butter', style: context.appTheme.bodyRegular.semiBold),
        subtitle: Text('1.0 Tbsp', style: context.appTheme.bodySmall),
      ),
      ListTile(
        leading: Image.network(
          'https://spoonacular.com/cdn/ingredients_100x100/butter-sliced.jpg',
        ),
        title: Text('Butter', style: context.appTheme.bodyRegular.semiBold),
        subtitle: Text('1.0 Tbsp', style: context.appTheme.bodySmall),
      ),
      ListTile(
        leading: Image.network(
          'https://spoonacular.com/cdn/ingredients_100x100/butter-sliced.jpg',
        ),
        title: Text('Butter', style: context.appTheme.bodyRegular.semiBold),
        subtitle: Text('1.0 Tbsp', style: context.appTheme.bodySmall),
      ),
      ListTile(
        leading: Image.network(
          'https://spoonacular.com/cdn/ingredients_100x100/butter-sliced.jpg',
        ),
        title: Text('Butter', style: context.appTheme.bodyRegular.semiBold),
        subtitle: Text('1.0 Tbsp', style: context.appTheme.bodySmall),
      ),
    ]);
  }
}
