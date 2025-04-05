import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:myrecipeapp/data/services/user_detail_service/user_detail_service.dart';
import 'package:myrecipeapp/di.dart';
import 'package:myrecipeapp/presentation/custom_navbar_cubit/custom_navbar_cubit.dart';
import 'package:myrecipeapp/presentation/profile/cubit/profile_cubit.dart';

import 'custom_nav_bar.dart';

class NestedScaffold extends StatelessWidget {
  const NestedScaffold({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CustomNavBarCubit()),
        BlocProvider(
            create: (_) =>
                ProfileCubit(getIt<UserDetailService>())..fetchUserDetails())
      ],
      child: Scaffold(
        body: Stack(
          children: [
            SafeArea(child: navigationShell),
            Positioned(
              bottom: 0.0,
              width: MediaQuery.of(context).size.width,
              child: CustomBottomNavigationBar(
                onDestinationSelected: (index) => _goBranch(index),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
