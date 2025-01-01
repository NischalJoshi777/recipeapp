import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';

class RecommendationList extends StatelessWidget {
  final List<FoodItem> _foodItems = [
    FoodItem(
      foodName: "Creamy Pasta with Tomato Sauce",
      foodImage: "assets/image/pasta.jpg",
      recipeBy: "Chef John",
      prepTime: "20 mins",
      ingredients: [
        "1 pound pasta",
        "1 jar crushed tomatoes",
        "1 onion, chopped",
        "2 cloves garlic, minced",
        "1/2 cup heavy cream",
        "1/4 cup grated Parmesan cheese",
        "Salt and pepper to taste",
        "Fresh basil for garnish",
      ],
    ),
    FoodItem(
      foodName: "Chicken Parmesan",
      foodImage: "assets/image/chickenparm.jpg",
      recipeBy: "Julia Child",
      prepTime: "30 mins",
      ingredients: [
        "1 pound boneless, skinless chicken breasts",
        "1 cup all-purpose flour",
        "1 egg, beaten",
        "1 cup bread crumbs",
        "1/2 cup grated Parmesan cheese",
        "1/4 cup olive oil",
        "1 jar marinara sauce",
        "1/2 cup mozzarella cheese",
        "Fresh basil for garnish",
      ],
    ),
    FoodItem(
      foodName: "Shrimp Scampi",
      foodImage: "assets/image/shrimp.jpg",
      recipeBy: "Jamie Oliver",
      prepTime: "15 mins",
      ingredients: [
        "1 pound shrimp, peeled and deveined",
        "1/4 cup olive oil",
        "4 cloves garlic, minced",
        "1/4 cup white wine",
        "1/4 cup butter",
        "1/4 cup chopped parsley",
        "Salt and pepper to taste",
      ],
    ),
    FoodItem(
      foodName: "Vegetarian Chili",
      foodImage: "assets/image/salad.jpg",
      recipeBy: "Gordon Ramsay",
      prepTime: "30 mins",
      ingredients: [
        "1 tablespoon olive oil",
        "1 onion, chopped",
        "2 cloves garlic, minced",
        "1 green bell pepper, chopped",
        "1 red bell pepper, chopped",
        "1 can black beans, rinsed and drained",
        "1 can kidney beans, rinsed and drained",
        "1 can diced tomatoes, undrained",
        "1 can diced tomatoes and green chilies",
        "1 packet taco seasoning",
        "Salt and pepper to taste",
      ],
    ),
    FoodItem(
      foodName: "Quinoa Salad",
      foodImage: "assets/image/salad.jpg",
      recipeBy: "Nigella Lawson",
      prepTime: "20 mins",
      ingredients: [
        "1 cup quinoa",
        "2 cups water",
        "1/2 cup chopped cucumber",
        "1/2 cup chopped tomato",
        "1/4 cup chopped red onion",
        "1/4 cup chopped parsley",
        "1/4 cup olive oil",
        "2 tablespoons lemon juice",
        "Salt and pepper to taste",
      ],
    ),
  ];

  RecommendationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(width: 12.0),
      scrollDirection: Axis.horizontal,
      itemCount: _foodItems.length,
      itemBuilder: (BuildContext context, int index) => _FoodItem(
        img: _foodItems[index].foodImage,
        name: _foodItems[index].foodName,
        recipeBy: _foodItems[index].recipeBy,
      ),
    );
  }
}

class _FoodItem extends StatelessWidget {
  final String img;
  final String name;
  final String recipeBy;

  const _FoodItem({
    super.key,
    required this.img,
    required this.name,
    required this.recipeBy,
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
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              img,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            name,
            style: context.appTheme.bodyRegular.semiBold,
            maxLines: 2,
          ),
          Text(
            "By: $recipeBy",
            style: context.appTheme.bodySmall,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}

class FoodItem {
  final String foodName;
  final String foodImage;
  final String recipeBy;
  final String prepTime;
  final List<String> ingredients;

  FoodItem({
    required this.prepTime,
    required this.foodName,
    required this.foodImage,
    required this.recipeBy,
    required this.ingredients,
  });
}
