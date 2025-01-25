import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:myrecipeapp/presentation/custom_navbar_cubit/custom_navbar_cubit.dart';

import 'custom_nav_bar.dart';

class NestedScaffold extends StatelessWidget {
  const NestedScaffold({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CustomNavBarCubit(),
      child: SafeArea(
        child: Stack(
          children: [
            Scaffold(
              body: navigationShell,
            ),
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
