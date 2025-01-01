import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/presentation/home/widget/search_text_field.dart';
import 'package:myrecipeapp/presentation/home/widget/welcome_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding:  EdgeInsets.all(16.0),
      child: Column(
        spacing: 16.0,
        children: [
          _Header(),
           SizedBox(),
          SearchTextField(),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 2,
          child: WelcomeText(),
        ),
         CircleAvatar(
          radius: 20.0,
          backgroundColor: Palette.primaryGreen,
        ),
      ],
    );
  }
}

