import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/color.dart';
import 'package:myrecipeapp/config/theme/text_styles.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_theme.tailor.dart';

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class AppTheme extends ThemeExtension<AppTheme> with _$AppThemeTailorMixin {
  @override
  final TextStyle h1;
  @override
  final TextStyle h2;
  @override
  final TextStyle bodyRegular;
  @override
  final TextStyle bodyLarge;
  @override
  final TextStyle bodySmall;
  @override
  final Color scaffoldBackGround;
  @override
  final Color primaryColor;
  @override
  final Color secondaryColor;

  AppTheme({
    required this.h1,
    required this.h2,
    required this.bodyRegular,
    required this.bodyLarge,
    required this.bodySmall,
    required this.scaffoldBackGround,
    required this.primaryColor,
    required this.secondaryColor,
  });
}

AppTheme myTheme = AppTheme(
  h1: TextStyles.h1Style,
  h2: TextStyles.h2Style,
  bodyRegular: TextStyles.bodyRegularStyle,
  bodyLarge: TextStyles.bodyLargeStyle,
  bodySmall: TextStyles.bodySmallStyle,
  scaffoldBackGround: Palette.lightGray,
  primaryColor: Palette.primaryGreen,
  secondaryColor: Palette.accentOrange,
);

//LightThemeData
final lightThemeData = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  extensions: [myTheme],
  primaryColor: myTheme.primaryColor,
  scaffoldBackgroundColor: Palette.lightGray,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Palette.white,
      backgroundColor: Palette.primaryGreen,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.white,
          width: 0.0,
        ),
        borderRadius: BorderRadius.circular(30.0)),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1.0,
        color: Palette.primaryGreen,
      ),
      borderRadius: BorderRadius.circular(30.0),
    ),
  ),
  primaryColorDark: myTheme.primaryColor,
  textTheme: TextTheme(
    headlineLarge: myTheme.h1,
    headlineMedium: myTheme.h2,
    bodyLarge: myTheme.bodyLarge,
    bodyMedium: myTheme.bodyRegular,
    bodySmall: myTheme.bodySmall,
  ),
);
