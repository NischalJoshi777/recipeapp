import 'package:get_it/get_it.dart';
import 'package:myrecipeapp/data/data_source/hive_local_source.dart';
import 'package:myrecipeapp/data/data_source/remote_source.dart';
import 'package:myrecipeapp/data/data_source/remote_source_impl.dart';
import 'package:myrecipeapp/data/model/recipe_bookmark/recipe_bookmarks.dart';
import 'package:myrecipeapp/data/services/authentication_service/authentication_service.dart';
import 'package:myrecipeapp/data/services/authentication_service/firebase_authentication_implementation.dart';
import 'package:myrecipeapp/data/services/recipe_details_service/recipe_details_service.dart';
import 'package:myrecipeapp/data/services/recipe_details_service/recipe_details_service_impl.dart';
import 'package:myrecipeapp/data/services/recipe_service.dart';
import 'package:myrecipeapp/presentation/auth/auth_cubit/auth_cubit.dart';

import 'data/services/recipe_service_impl.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<RemoteSource>(() => RemoteSourceImpl());

  // Register HiveLocalSource only once
  getIt.registerLazySingleton<HiveLocalSource<RecipeBookmark>>(
    () => HiveLocalSource<RecipeBookmark>('recipesBox'),
  );

  getIt.registerLazySingleton<RecipeService>(
    () => RecipeServiceImpl(
      remoteSource: getIt<RemoteSource>(),
      localSource: getIt<HiveLocalSource<RecipeBookmark>>(),
    ),
  );

  getIt.registerLazySingleton<AuthenticationService>(
    () => FirebaseAuthenticationImplementation(),
  );

  getIt.registerLazySingleton<AuthCubit>(
    () => AuthCubit(authService: getIt<AuthenticationService>()),
  );

  getIt.registerLazySingleton<RecipeDetailService>(
    () => RecipeDetailsServiceImpl(
      remoteSource: getIt<RemoteSource>(),
      localSource: getIt<HiveLocalSource<RecipeBookmark>>(),
    ),
  );
}
