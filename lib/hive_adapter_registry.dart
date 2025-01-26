import 'package:hive/hive.dart';

import 'data/model/recipe_details/recipe_details.dart';

void registerAdapters() {
  Hive.registerAdapter(RecipeDetailsImplAdapter());
  Hive.registerAdapter(NutrientsImplAdapter());
  Hive.registerAdapter(NutritionImplAdapter());
  Hive.registerAdapter(CaloricBreakDownImplAdapter());
  Hive.registerAdapter(IngredientsImplAdapter());
  Hive.registerAdapter(MeasureImplAdapter());
  Hive.registerAdapter(UnitMeasureImplAdapter());
}
