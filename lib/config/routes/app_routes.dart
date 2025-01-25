import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myrecipeapp/presentation/custom_navbar_cubit/nested_scaffold.dart';
import 'package:myrecipeapp/presentation/home/details/details_screen.dart';
import 'package:myrecipeapp/presentation/home/widget/home_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _homeNavigatorKey = GlobalKey<NavigatorState>();
final _searchNavigatorKey = GlobalKey<NavigatorState>();
final _bookMarkNavigatorKey = GlobalKey<NavigatorState>();
final _profileNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter myRouter = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: <RouteBase>[
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
                  name: 'details',
                  builder: (_, state) => DetailsScreen(
                    id: state.extra as int,
                  ),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/search",
              builder: (_, __) => const SearchScreen(),
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
