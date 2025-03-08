import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myrecipeapp/config/routes/routes.dart';
import 'package:myrecipeapp/di.dart';
import 'package:myrecipeapp/presentation/auth/auth_cubit/auth_cubit.dart';
import 'package:myrecipeapp/presentation/auth/widget/login_screen.dart';
import 'package:myrecipeapp/presentation/bookmarks/bookmarks_screen.dart';
import 'package:myrecipeapp/presentation/custom_navbar_cubit/nested_scaffold.dart';
import 'package:myrecipeapp/presentation/home/details/details_screen.dart';
import 'package:myrecipeapp/presentation/home/widget/home_screen.dart';
import 'package:myrecipeapp/presentation/profile/profile_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _homeNavigatorKey = GlobalKey<NavigatorState>();
final _searchNavigatorKey = GlobalKey<NavigatorState>();
final _favoriteNavigatorKey = GlobalKey<NavigatorState>();
final _profileNavigatorKey = GlobalKey<NavigatorState>();

class StreamListenable extends ChangeNotifier {
  StreamListenable(Stream stream) {
    stream.listen((_) {
      notifyListeners();
    });
  }
}

final GoRouter myRouter = GoRouter(
  initialLocation: Routes.login,
  navigatorKey: _rootNavigatorKey,
  refreshListenable: StreamListenable(getIt<AuthCubit>().stream),
  redirect: (context, state) {
    final authCubit = getIt<AuthCubit>();
    final authState = authCubit.state;
    final isAuthenticated = authState is Authenticated;
    final isLoggingIn = state.uri.toString() == Routes.login;
    if (isAuthenticated && isLoggingIn) {
      return Routes.home;
    } else if (!isAuthenticated && !isLoggingIn) {
      return Routes.login;
    }
    return null;
  },
  routes: <RouteBase>[
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: "/login",
      builder: (_, state) => const LoginScreen(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) {
        return NestedScaffold(
          navigationShell: shell,
        );
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _homeNavigatorKey,
          routes: [
            GoRoute(
              path: "/",
              builder: (_, __) => const HomeScreen(),
              routes: <RouteBase>[
                GoRoute(
                  path: "/details",
                  name: 'home_details',
                  builder: (_, state) => DetailsScreen(
                    id: state.extra as int,
                  ),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _searchNavigatorKey,
          routes: [
            GoRoute(
              path: "/search",
              builder: (_, __) => const SearchScreen(),
              routes: const <RouteBase>[],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _favoriteNavigatorKey,
          routes: [
            GoRoute(
              path: "/favorite",
              builder: (_, __) => FavoritesScreen(
                key: UniqueKey(),
              ),
              routes: <RouteBase>[
                GoRoute(
                  path: "/details",
                  name: 'favorite_details',
                  builder: (_, state) => DetailsScreen(
                    id: state.extra as int,
                  ),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _profileNavigatorKey,
          routes: [
            GoRoute(
              path: "/profile",
              builder: (_, __) => const ProfileScreen(),
              routes: const <RouteBase>[],
            ),
          ],
        ),
      ],
    ),
  ],
);

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
