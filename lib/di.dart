import 'package:get_it/get_it.dart';
import 'package:myrecipeapp/data/data_source/remote_source.dart';
import 'package:myrecipeapp/data/data_source/remote_source_impl.dart';
import 'package:myrecipeapp/data/services/recipe_service.dart';

import 'data/services/recipe_service_impl.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<RemoteSource>(() => RemoteSourceImpl());

  getIt.registerLazySingleton<RecipeService>(
    () => RecipeServiceImpl(
      remoteSource: getIt<RemoteSource>(),
    ),
  );
}
