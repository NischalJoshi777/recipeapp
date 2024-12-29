import 'package:flutter/material.dart';
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

  AppTheme({
    required this.h1,
    required this.h2,
    required this.bodyRegular,
    required this.bodyLarge,
    required this.bodySmall,
  });
}

AppTheme myTheme = AppTheme(
  h1: TextStyles.h1Style,
  h2: TextStyles.h2Style,
  bodyRegular: TextStyles.bodyRegularStyle,
  bodyLarge: TextStyles.bodyLargeStyle,
  bodySmall: TextStyles.bodySmallStyle,
);
