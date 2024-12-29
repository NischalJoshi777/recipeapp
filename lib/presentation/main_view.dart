import 'package:flutter/material.dart';
import 'package:myrecipeapp/presentation/details/details_screen.dart';
import 'package:myrecipeapp/presentation/home/home_screen.dart';
import 'package:myrecipeapp/presentation/widget/custom_nav_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final List<Widget> _bodies = [
    const HomeScreen(),
    const DetailsScreen(),
    const HomeScreen(),
    const DetailsScreen(),
  ];

  late Widget _current;
  @override
  void initState() {
    super.initState();
    _current = _bodies[0];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _current,
        bottomNavigationBar: CustomBottomNavigationBar(
          onItemPressed: (index) {
            _setBody(context, index);
          },
        ),
      ),
    );
  }

  void _setBody(BuildContext context, int index) {
    setState(() {
      _current = _bodies[index];
    });
  }
}
