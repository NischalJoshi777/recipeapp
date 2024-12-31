import 'package:go_router/go_router.dart';
import 'package:myrecipeapp/presentation/details/details_screen.dart';
import 'package:myrecipeapp/presentation/main_view.dart';

final GoRouter myRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: "/",
      builder: (_, __) => const MainView(),
      routes: <RouteBase>[
        GoRoute(
          path: "/details",
          builder: (_, __) => const DetailsScreen(),
        )
      ],
    ),
  ],
);
