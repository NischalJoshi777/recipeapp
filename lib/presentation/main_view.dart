import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myrecipeapp/presentation/bookmarks/bookmarks_screen.dart';
import 'package:myrecipeapp/presentation/custom_navbar_cubit/custom_nav_bar.dart';
import 'package:myrecipeapp/presentation/details/details_screen.dart';
import 'package:myrecipeapp/presentation/home/home_screen.dart';
import 'package:myrecipeapp/presentation/profile/profile_screen.dart';

import 'custom_navbar_cubit/custom_navbar_cubit.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CustomNavBarCubit(),
      child: SafeArea(
        child: Scaffold(
          body: _Body(),
          bottomNavigationBar: const CustomBottomNavigationBar(),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final List<Widget> _bodies = [
    const HomeScreen(),
    const DetailsScreen(),
    const BookmarksScreen(),
    const ProfileScreen(),
  ];

  _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomNavBarCubit, int>(builder: (context, state) {
      return _bodies[state];
    });
  }
}
