import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/presentation/home/details/view_model/recipe_detail_view_model.dart';
import 'package:myrecipeapp/presentation/home/details/widget/categories_tick_list.dart';
import 'package:myrecipeapp/presentation/home/details/widget/cookingtime_likes_score.dart';
import 'package:myrecipeapp/presentation/home/details/widget/expandable_header.dart';
import 'package:myrecipeapp/presentation/home/details/widget/ingredients_list.dart';
import 'package:myrecipeapp/presentation/home/details/widget/macros_chart.dart';
import 'package:myrecipeapp/presentation/home/widget/header_text.dart';

class DetailBody extends StatefulWidget {
  final RecipeDetailVM recipe;

  const DetailBody({
    super.key,
    required this.recipe,
  });

  @override
  State<DetailBody> createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.32,
      bottom: 0,
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        child: Container(
          color: Palette.lightGray,
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                HeaderText(
                  text:
                      "${widget.recipe.title} (${widget.recipe.servingSize} servings)",
                ),
                const SizedBox(height: 12.0),
                _TabBar(controller: controller),
                const SizedBox(height: 4.0),
                Expanded(
                  flex: 2,
                  child: TabBarView(
                    controller: controller,
                    children: [
                      _buildDetails(),
                      _buildIngredients(),
                      _buildInstructions(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDetails() {
    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12.0),
        CookingTimeLikesScore(
          cookingMinutes: widget.recipe.cookingMinutes,
          aggregatedLikes: widget.recipe.aggregatedLikes,
          healthScore: widget.recipe.healthScore,
        ),
        const SizedBox(height: 12.0),
        CategoriesTickList(recipe: widget.recipe),
        const SizedBox(height: 12.0),
        const HeaderText(text: 'Calorie Count'),
        const SizedBox(height: 12.0),
        MacrosChart(
          calorieCount: widget.recipe.calories,
          proteinPercentage: widget.recipe.caloricBreakDown.percentProtein,
          carbsPercentage: widget.recipe.caloricBreakDown.percentCarbs,
          fatsPercentage: widget.recipe.caloricBreakDown.percentFat,
        ),
        const SizedBox(height: 80.0),
      ],
    );
  }

  Widget _buildIngredients() {
    return SingleChildScrollView(
      child: ExpandableHeader(
        title: 'Ingredients',
        content: [
          IngredientsList(ingredients: widget.recipe.ingredients),
          const SizedBox(height: 80.0)
        ],
      ),
    );
  }

  Widget _buildInstructions() {
    return SingleChildScrollView(
      child: ExpandableHeader(
        title: 'Instructions',
        content: [
          HtmlWidget(
            widget.recipe.instructions,
          ),
          const SizedBox(height: 80.0)
        ],
      ),
    );
  }
}

class _TabBar extends StatelessWidget {
  final TabController controller;

  const _TabBar({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.green.shade100,
          borderRadius: const BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          dividerColor: Colors.transparent,
          indicator: const BoxDecoration(
            color: Palette.primaryGreen,
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black54,
          controller: controller,
          tabs: const [
            Tab(text: 'Details'),
            Tab(text: 'Ingredients'),
            Tab(text: 'Instructions'),
          ],
        ),
      ),
    );
  }
}
