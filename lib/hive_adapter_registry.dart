import 'package:hive/hive.dart';
import 'package:myrecipeapp/data/model/recipe_bookmark/recipe_bookmarks.dart';

void registerAdapters() {
  Hive.registerAdapter(RecipeBookmarkImplAdapter());
}
