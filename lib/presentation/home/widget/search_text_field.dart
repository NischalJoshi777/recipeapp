import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/app_theme.dart';
import 'package:myrecipeapp/config/theme/color.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30.0),
      color: Palette.darkGray,
      elevation: 4.0,
      child: TextField(
        style: context.appTheme.bodyRegular,
        cursorHeight: 18.0,
        decoration: InputDecoration(
          // border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
          isDense: true,
          filled: true,
          prefixIcon: const Icon(
            Icons.search_outlined,
            color: Palette.darkGray,
            size: 20.0,
          ),
          hintText: 'Search any recipe',
          fillColor: Colors.white,
          hintStyle: context.appTheme.bodyRegular.copyWith(height: 0),
        ),
      ),
    );
  }
}
