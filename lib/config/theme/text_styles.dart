import 'package:flutter/material.dart';

class TextStyles {
  static const _base = TextStyle(
    color: Colors.black,
    fontFamily: 'Poppins',
    leadingDistribution: TextLeadingDistribution.even,
  );

  static final h1Style = _base.copyWith(fontSize: 40, height: 72 / 48);
  static final h2Style = _base.copyWith(fontSize: 36, height: 36 / 28);
  static final bodyLargeStyle = _base.copyWith(fontSize: 24, height: 24 / 16);
  static final bodyRegularStyle = _base.copyWith(fontSize: 14, height: 24 / 16);
  static final bodySmallStyle = _base.copyWith(fontSize: 12.0, height: 24 / 16);
  static final bodyExtraSmallStyle =
      _base.copyWith(fontSize: 10.0, height: 24 / 16);
}

extension TextStyleExtensions on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
  TextStyle get thin => copyWith(fontWeight: FontWeight.w300);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  TextStyle withColor(Color color) => copyWith(color: color);
  TextStyle withSize(double size) => copyWith(fontSize: size);
}
