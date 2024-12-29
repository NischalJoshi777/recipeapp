// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppThemeTailorMixin on ThemeExtension<AppTheme> {
  TextStyle get h1;
  TextStyle get h2;
  TextStyle get bodyRegular;
  TextStyle get bodyLarge;
  TextStyle get bodySmall;
  Color get scaffoldBackGround;

  @override
  AppTheme copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? bodyRegular,
    TextStyle? bodyLarge,
    TextStyle? bodySmall,
    Color? scaffoldBackGround,
  }) {
    return AppTheme(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      bodyRegular: bodyRegular ?? this.bodyRegular,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodySmall: bodySmall ?? this.bodySmall,
      scaffoldBackGround: scaffoldBackGround ?? this.scaffoldBackGround,
    );
  }

  @override
  AppTheme lerp(covariant ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this as AppTheme;
    return AppTheme(
      h1: TextStyle.lerp(h1, other.h1, t)!,
      h2: TextStyle.lerp(h2, other.h2, t)!,
      bodyRegular: TextStyle.lerp(bodyRegular, other.bodyRegular, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      scaffoldBackGround:
          Color.lerp(scaffoldBackGround, other.scaffoldBackGround, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTheme &&
            const DeepCollectionEquality().equals(h1, other.h1) &&
            const DeepCollectionEquality().equals(h2, other.h2) &&
            const DeepCollectionEquality()
                .equals(bodyRegular, other.bodyRegular) &&
            const DeepCollectionEquality().equals(bodyLarge, other.bodyLarge) &&
            const DeepCollectionEquality().equals(bodySmall, other.bodySmall) &&
            const DeepCollectionEquality()
                .equals(scaffoldBackGround, other.scaffoldBackGround));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(h1),
      const DeepCollectionEquality().hash(h2),
      const DeepCollectionEquality().hash(bodyRegular),
      const DeepCollectionEquality().hash(bodyLarge),
      const DeepCollectionEquality().hash(bodySmall),
      const DeepCollectionEquality().hash(scaffoldBackGround),
    );
  }
}

extension AppThemeBuildContext on BuildContext {
  AppTheme get appTheme => Theme.of(this).extension<AppTheme>()!;
}
