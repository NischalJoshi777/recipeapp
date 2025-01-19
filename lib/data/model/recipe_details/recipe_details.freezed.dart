// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeDetails _$RecipeDetailsFromJson(Map<String, dynamic> json) {
  return _RecipeDetails.fromJson(json);
}

/// @nodoc
mixin _$RecipeDetails {
  int get id => throw _privateConstructorUsedError;
  bool get vegan => throw _privateConstructorUsedError;
  bool get vegetarian => throw _privateConstructorUsedError;
  bool get dairyFree => throw _privateConstructorUsedError;
  bool get glutenFree => throw _privateConstructorUsedError;
  bool get ketogenic => throw _privateConstructorUsedError;
  int get preparationMinutes => throw _privateConstructorUsedError;
  int get cookingMinutes => throw _privateConstructorUsedError;
  int get aggregateLikes => throw _privateConstructorUsedError;
  List<String> get dishTypes => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get instructions => throw _privateConstructorUsedError;
  double get healthScore => throw _privateConstructorUsedError;
  int get servings => throw _privateConstructorUsedError;
  List<Ingredients> get extendedIngredients =>
      throw _privateConstructorUsedError;

  /// Serializes this RecipeDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecipeDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipeDetailsCopyWith<RecipeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailsCopyWith<$Res> {
  factory $RecipeDetailsCopyWith(
          RecipeDetails value, $Res Function(RecipeDetails) then) =
      _$RecipeDetailsCopyWithImpl<$Res, RecipeDetails>;
  @useResult
  $Res call(
      {int id,
      bool vegan,
      bool vegetarian,
      bool dairyFree,
      bool glutenFree,
      bool ketogenic,
      int preparationMinutes,
      int cookingMinutes,
      int aggregateLikes,
      List<String> dishTypes,
      String summary,
      String title,
      String image,
      String instructions,
      double healthScore,
      int servings,
      List<Ingredients> extendedIngredients});
}

/// @nodoc
class _$RecipeDetailsCopyWithImpl<$Res, $Val extends RecipeDetails>
    implements $RecipeDetailsCopyWith<$Res> {
  _$RecipeDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipeDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vegan = null,
    Object? vegetarian = null,
    Object? dairyFree = null,
    Object? glutenFree = null,
    Object? ketogenic = null,
    Object? preparationMinutes = null,
    Object? cookingMinutes = null,
    Object? aggregateLikes = null,
    Object? dishTypes = null,
    Object? summary = null,
    Object? title = null,
    Object? image = null,
    Object? instructions = null,
    Object? healthScore = null,
    Object? servings = null,
    Object? extendedIngredients = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      vegan: null == vegan
          ? _value.vegan
          : vegan // ignore: cast_nullable_to_non_nullable
              as bool,
      vegetarian: null == vegetarian
          ? _value.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      dairyFree: null == dairyFree
          ? _value.dairyFree
          : dairyFree // ignore: cast_nullable_to_non_nullable
              as bool,
      glutenFree: null == glutenFree
          ? _value.glutenFree
          : glutenFree // ignore: cast_nullable_to_non_nullable
              as bool,
      ketogenic: null == ketogenic
          ? _value.ketogenic
          : ketogenic // ignore: cast_nullable_to_non_nullable
              as bool,
      preparationMinutes: null == preparationMinutes
          ? _value.preparationMinutes
          : preparationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      cookingMinutes: null == cookingMinutes
          ? _value.cookingMinutes
          : cookingMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      aggregateLikes: null == aggregateLikes
          ? _value.aggregateLikes
          : aggregateLikes // ignore: cast_nullable_to_non_nullable
              as int,
      dishTypes: null == dishTypes
          ? _value.dishTypes
          : dishTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      healthScore: null == healthScore
          ? _value.healthScore
          : healthScore // ignore: cast_nullable_to_non_nullable
              as double,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      extendedIngredients: null == extendedIngredients
          ? _value.extendedIngredients
          : extendedIngredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredients>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeDetailsImplCopyWith<$Res>
    implements $RecipeDetailsCopyWith<$Res> {
  factory _$$RecipeDetailsImplCopyWith(
          _$RecipeDetailsImpl value, $Res Function(_$RecipeDetailsImpl) then) =
      __$$RecipeDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool vegan,
      bool vegetarian,
      bool dairyFree,
      bool glutenFree,
      bool ketogenic,
      int preparationMinutes,
      int cookingMinutes,
      int aggregateLikes,
      List<String> dishTypes,
      String summary,
      String title,
      String image,
      String instructions,
      double healthScore,
      int servings,
      List<Ingredients> extendedIngredients});
}

/// @nodoc
class __$$RecipeDetailsImplCopyWithImpl<$Res>
    extends _$RecipeDetailsCopyWithImpl<$Res, _$RecipeDetailsImpl>
    implements _$$RecipeDetailsImplCopyWith<$Res> {
  __$$RecipeDetailsImplCopyWithImpl(
      _$RecipeDetailsImpl _value, $Res Function(_$RecipeDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vegan = null,
    Object? vegetarian = null,
    Object? dairyFree = null,
    Object? glutenFree = null,
    Object? ketogenic = null,
    Object? preparationMinutes = null,
    Object? cookingMinutes = null,
    Object? aggregateLikes = null,
    Object? dishTypes = null,
    Object? summary = null,
    Object? title = null,
    Object? image = null,
    Object? instructions = null,
    Object? healthScore = null,
    Object? servings = null,
    Object? extendedIngredients = null,
  }) {
    return _then(_$RecipeDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      vegan: null == vegan
          ? _value.vegan
          : vegan // ignore: cast_nullable_to_non_nullable
              as bool,
      vegetarian: null == vegetarian
          ? _value.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      dairyFree: null == dairyFree
          ? _value.dairyFree
          : dairyFree // ignore: cast_nullable_to_non_nullable
              as bool,
      glutenFree: null == glutenFree
          ? _value.glutenFree
          : glutenFree // ignore: cast_nullable_to_non_nullable
              as bool,
      ketogenic: null == ketogenic
          ? _value.ketogenic
          : ketogenic // ignore: cast_nullable_to_non_nullable
              as bool,
      preparationMinutes: null == preparationMinutes
          ? _value.preparationMinutes
          : preparationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      cookingMinutes: null == cookingMinutes
          ? _value.cookingMinutes
          : cookingMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      aggregateLikes: null == aggregateLikes
          ? _value.aggregateLikes
          : aggregateLikes // ignore: cast_nullable_to_non_nullable
              as int,
      dishTypes: null == dishTypes
          ? _value._dishTypes
          : dishTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      healthScore: null == healthScore
          ? _value.healthScore
          : healthScore // ignore: cast_nullable_to_non_nullable
              as double,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      extendedIngredients: null == extendedIngredients
          ? _value._extendedIngredients
          : extendedIngredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredients>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeDetailsImpl implements _RecipeDetails {
  const _$RecipeDetailsImpl(
      {required this.id,
      this.vegan = false,
      this.vegetarian = false,
      this.dairyFree = false,
      this.glutenFree = false,
      this.ketogenic = false,
      this.preparationMinutes = 0,
      this.cookingMinutes = 0,
      this.aggregateLikes = 0,
      final List<String> dishTypes = const [],
      this.summary = 'N/A',
      this.title = 'N/A',
      required this.image,
      required this.instructions,
      this.healthScore = 0.0,
      required this.servings,
      final List<Ingredients> extendedIngredients = const []})
      : _dishTypes = dishTypes,
        _extendedIngredients = extendedIngredients;

  factory _$RecipeDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeDetailsImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final bool vegan;
  @override
  @JsonKey()
  final bool vegetarian;
  @override
  @JsonKey()
  final bool dairyFree;
  @override
  @JsonKey()
  final bool glutenFree;
  @override
  @JsonKey()
  final bool ketogenic;
  @override
  @JsonKey()
  final int preparationMinutes;
  @override
  @JsonKey()
  final int cookingMinutes;
  @override
  @JsonKey()
  final int aggregateLikes;
  final List<String> _dishTypes;
  @override
  @JsonKey()
  List<String> get dishTypes {
    if (_dishTypes is EqualUnmodifiableListView) return _dishTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishTypes);
  }

  @override
  @JsonKey()
  final String summary;
  @override
  @JsonKey()
  final String title;
  @override
  final String image;
  @override
  final String instructions;
  @override
  @JsonKey()
  final double healthScore;
  @override
  final int servings;
  final List<Ingredients> _extendedIngredients;
  @override
  @JsonKey()
  List<Ingredients> get extendedIngredients {
    if (_extendedIngredients is EqualUnmodifiableListView)
      return _extendedIngredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extendedIngredients);
  }

  @override
  String toString() {
    return 'RecipeDetails(id: $id, vegan: $vegan, vegetarian: $vegetarian, dairyFree: $dairyFree, glutenFree: $glutenFree, ketogenic: $ketogenic, preparationMinutes: $preparationMinutes, cookingMinutes: $cookingMinutes, aggregateLikes: $aggregateLikes, dishTypes: $dishTypes, summary: $summary, title: $title, image: $image, instructions: $instructions, healthScore: $healthScore, servings: $servings, extendedIngredients: $extendedIngredients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vegan, vegan) || other.vegan == vegan) &&
            (identical(other.vegetarian, vegetarian) ||
                other.vegetarian == vegetarian) &&
            (identical(other.dairyFree, dairyFree) ||
                other.dairyFree == dairyFree) &&
            (identical(other.glutenFree, glutenFree) ||
                other.glutenFree == glutenFree) &&
            (identical(other.ketogenic, ketogenic) ||
                other.ketogenic == ketogenic) &&
            (identical(other.preparationMinutes, preparationMinutes) ||
                other.preparationMinutes == preparationMinutes) &&
            (identical(other.cookingMinutes, cookingMinutes) ||
                other.cookingMinutes == cookingMinutes) &&
            (identical(other.aggregateLikes, aggregateLikes) ||
                other.aggregateLikes == aggregateLikes) &&
            const DeepCollectionEquality()
                .equals(other._dishTypes, _dishTypes) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.healthScore, healthScore) ||
                other.healthScore == healthScore) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            const DeepCollectionEquality()
                .equals(other._extendedIngredients, _extendedIngredients));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      vegan,
      vegetarian,
      dairyFree,
      glutenFree,
      ketogenic,
      preparationMinutes,
      cookingMinutes,
      aggregateLikes,
      const DeepCollectionEquality().hash(_dishTypes),
      summary,
      title,
      image,
      instructions,
      healthScore,
      servings,
      const DeepCollectionEquality().hash(_extendedIngredients));

  /// Create a copy of RecipeDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDetailsImplCopyWith<_$RecipeDetailsImpl> get copyWith =>
      __$$RecipeDetailsImplCopyWithImpl<_$RecipeDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeDetailsImplToJson(
      this,
    );
  }
}

abstract class _RecipeDetails implements RecipeDetails {
  const factory _RecipeDetails(
      {required final int id,
      final bool vegan,
      final bool vegetarian,
      final bool dairyFree,
      final bool glutenFree,
      final bool ketogenic,
      final int preparationMinutes,
      final int cookingMinutes,
      final int aggregateLikes,
      final List<String> dishTypes,
      final String summary,
      final String title,
      required final String image,
      required final String instructions,
      final double healthScore,
      required final int servings,
      final List<Ingredients> extendedIngredients}) = _$RecipeDetailsImpl;

  factory _RecipeDetails.fromJson(Map<String, dynamic> json) =
      _$RecipeDetailsImpl.fromJson;

  @override
  int get id;
  @override
  bool get vegan;
  @override
  bool get vegetarian;
  @override
  bool get dairyFree;
  @override
  bool get glutenFree;
  @override
  bool get ketogenic;
  @override
  int get preparationMinutes;
  @override
  int get cookingMinutes;
  @override
  int get aggregateLikes;
  @override
  List<String> get dishTypes;
  @override
  String get summary;
  @override
  String get title;
  @override
  String get image;
  @override
  String get instructions;
  @override
  double get healthScore;
  @override
  int get servings;
  @override
  List<Ingredients> get extendedIngredients;

  /// Create a copy of RecipeDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeDetailsImplCopyWith<_$RecipeDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ingredients _$IngredientsFromJson(Map<String, dynamic> json) {
  return _Ingredients.fromJson(json);
}

/// @nodoc
mixin _$Ingredients {
  String? get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Measure get measures => throw _privateConstructorUsedError;

  /// Serializes this Ingredients to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ingredients
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IngredientsCopyWith<Ingredients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsCopyWith<$Res> {
  factory $IngredientsCopyWith(
          Ingredients value, $Res Function(Ingredients) then) =
      _$IngredientsCopyWithImpl<$Res, Ingredients>;
  @useResult
  $Res call({String? image, String name, Measure measures});

  $MeasureCopyWith<$Res> get measures;
}

/// @nodoc
class _$IngredientsCopyWithImpl<$Res, $Val extends Ingredients>
    implements $IngredientsCopyWith<$Res> {
  _$IngredientsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ingredients
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = null,
    Object? measures = null,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      measures: null == measures
          ? _value.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as Measure,
    ) as $Val);
  }

  /// Create a copy of Ingredients
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeasureCopyWith<$Res> get measures {
    return $MeasureCopyWith<$Res>(_value.measures, (value) {
      return _then(_value.copyWith(measures: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IngredientsImplCopyWith<$Res>
    implements $IngredientsCopyWith<$Res> {
  factory _$$IngredientsImplCopyWith(
          _$IngredientsImpl value, $Res Function(_$IngredientsImpl) then) =
      __$$IngredientsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image, String name, Measure measures});

  @override
  $MeasureCopyWith<$Res> get measures;
}

/// @nodoc
class __$$IngredientsImplCopyWithImpl<$Res>
    extends _$IngredientsCopyWithImpl<$Res, _$IngredientsImpl>
    implements _$$IngredientsImplCopyWith<$Res> {
  __$$IngredientsImplCopyWithImpl(
      _$IngredientsImpl _value, $Res Function(_$IngredientsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ingredients
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = null,
    Object? measures = null,
  }) {
    return _then(_$IngredientsImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      measures: null == measures
          ? _value.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as Measure,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientsImpl implements _Ingredients {
  const _$IngredientsImpl(
      {this.image, this.name = 'N/A', required this.measures});

  factory _$IngredientsImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientsImplFromJson(json);

  @override
  final String? image;
  @override
  @JsonKey()
  final String name;
  @override
  final Measure measures;

  @override
  String toString() {
    return 'Ingredients(image: $image, name: $name, measures: $measures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientsImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.measures, measures) ||
                other.measures == measures));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, name, measures);

  /// Create a copy of Ingredients
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientsImplCopyWith<_$IngredientsImpl> get copyWith =>
      __$$IngredientsImplCopyWithImpl<_$IngredientsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientsImplToJson(
      this,
    );
  }
}

abstract class _Ingredients implements Ingredients {
  const factory _Ingredients(
      {final String? image,
      final String name,
      required final Measure measures}) = _$IngredientsImpl;

  factory _Ingredients.fromJson(Map<String, dynamic> json) =
      _$IngredientsImpl.fromJson;

  @override
  String? get image;
  @override
  String get name;
  @override
  Measure get measures;

  /// Create a copy of Ingredients
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IngredientsImplCopyWith<_$IngredientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Measure _$MeasureFromJson(Map<String, dynamic> json) {
  return _Measure.fromJson(json);
}

/// @nodoc
mixin _$Measure {
  UnitMeasure get metric => throw _privateConstructorUsedError;
  UnitMeasure get us => throw _privateConstructorUsedError;

  /// Serializes this Measure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Measure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeasureCopyWith<Measure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureCopyWith<$Res> {
  factory $MeasureCopyWith(Measure value, $Res Function(Measure) then) =
      _$MeasureCopyWithImpl<$Res, Measure>;
  @useResult
  $Res call({UnitMeasure metric, UnitMeasure us});

  $UnitMeasureCopyWith<$Res> get metric;
  $UnitMeasureCopyWith<$Res> get us;
}

/// @nodoc
class _$MeasureCopyWithImpl<$Res, $Val extends Measure>
    implements $MeasureCopyWith<$Res> {
  _$MeasureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Measure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metric = null,
    Object? us = null,
  }) {
    return _then(_value.copyWith(
      metric: null == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as UnitMeasure,
      us: null == us
          ? _value.us
          : us // ignore: cast_nullable_to_non_nullable
              as UnitMeasure,
    ) as $Val);
  }

  /// Create a copy of Measure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnitMeasureCopyWith<$Res> get metric {
    return $UnitMeasureCopyWith<$Res>(_value.metric, (value) {
      return _then(_value.copyWith(metric: value) as $Val);
    });
  }

  /// Create a copy of Measure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnitMeasureCopyWith<$Res> get us {
    return $UnitMeasureCopyWith<$Res>(_value.us, (value) {
      return _then(_value.copyWith(us: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeasureImplCopyWith<$Res> implements $MeasureCopyWith<$Res> {
  factory _$$MeasureImplCopyWith(
          _$MeasureImpl value, $Res Function(_$MeasureImpl) then) =
      __$$MeasureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UnitMeasure metric, UnitMeasure us});

  @override
  $UnitMeasureCopyWith<$Res> get metric;
  @override
  $UnitMeasureCopyWith<$Res> get us;
}

/// @nodoc
class __$$MeasureImplCopyWithImpl<$Res>
    extends _$MeasureCopyWithImpl<$Res, _$MeasureImpl>
    implements _$$MeasureImplCopyWith<$Res> {
  __$$MeasureImplCopyWithImpl(
      _$MeasureImpl _value, $Res Function(_$MeasureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Measure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metric = null,
    Object? us = null,
  }) {
    return _then(_$MeasureImpl(
      metric: null == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as UnitMeasure,
      us: null == us
          ? _value.us
          : us // ignore: cast_nullable_to_non_nullable
              as UnitMeasure,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasureImpl implements _Measure {
  const _$MeasureImpl({required this.metric, required this.us});

  factory _$MeasureImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeasureImplFromJson(json);

  @override
  final UnitMeasure metric;
  @override
  final UnitMeasure us;

  @override
  String toString() {
    return 'Measure(metric: $metric, us: $us)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasureImpl &&
            (identical(other.metric, metric) || other.metric == metric) &&
            (identical(other.us, us) || other.us == us));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, metric, us);

  /// Create a copy of Measure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasureImplCopyWith<_$MeasureImpl> get copyWith =>
      __$$MeasureImplCopyWithImpl<_$MeasureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasureImplToJson(
      this,
    );
  }
}

abstract class _Measure implements Measure {
  const factory _Measure(
      {required final UnitMeasure metric,
      required final UnitMeasure us}) = _$MeasureImpl;

  factory _Measure.fromJson(Map<String, dynamic> json) = _$MeasureImpl.fromJson;

  @override
  UnitMeasure get metric;
  @override
  UnitMeasure get us;

  /// Create a copy of Measure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeasureImplCopyWith<_$MeasureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnitMeasure _$UnitMeasureFromJson(Map<String, dynamic> json) {
  return _UnitMeasure.fromJson(json);
}

/// @nodoc
mixin _$UnitMeasure {
  double get amount => throw _privateConstructorUsedError;
  String get unitShort => throw _privateConstructorUsedError;
  String get unitLong => throw _privateConstructorUsedError;

  /// Serializes this UnitMeasure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnitMeasure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnitMeasureCopyWith<UnitMeasure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitMeasureCopyWith<$Res> {
  factory $UnitMeasureCopyWith(
          UnitMeasure value, $Res Function(UnitMeasure) then) =
      _$UnitMeasureCopyWithImpl<$Res, UnitMeasure>;
  @useResult
  $Res call({double amount, String unitShort, String unitLong});
}

/// @nodoc
class _$UnitMeasureCopyWithImpl<$Res, $Val extends UnitMeasure>
    implements $UnitMeasureCopyWith<$Res> {
  _$UnitMeasureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnitMeasure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unitShort = null,
    Object? unitLong = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unitShort: null == unitShort
          ? _value.unitShort
          : unitShort // ignore: cast_nullable_to_non_nullable
              as String,
      unitLong: null == unitLong
          ? _value.unitLong
          : unitLong // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitMeasureImplCopyWith<$Res>
    implements $UnitMeasureCopyWith<$Res> {
  factory _$$UnitMeasureImplCopyWith(
          _$UnitMeasureImpl value, $Res Function(_$UnitMeasureImpl) then) =
      __$$UnitMeasureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, String unitShort, String unitLong});
}

/// @nodoc
class __$$UnitMeasureImplCopyWithImpl<$Res>
    extends _$UnitMeasureCopyWithImpl<$Res, _$UnitMeasureImpl>
    implements _$$UnitMeasureImplCopyWith<$Res> {
  __$$UnitMeasureImplCopyWithImpl(
      _$UnitMeasureImpl _value, $Res Function(_$UnitMeasureImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitMeasure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unitShort = null,
    Object? unitLong = null,
  }) {
    return _then(_$UnitMeasureImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unitShort: null == unitShort
          ? _value.unitShort
          : unitShort // ignore: cast_nullable_to_non_nullable
              as String,
      unitLong: null == unitLong
          ? _value.unitLong
          : unitLong // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitMeasureImpl implements _UnitMeasure {
  const _$UnitMeasureImpl(
      {required this.amount, required this.unitShort, this.unitLong = 'N/A'});

  factory _$UnitMeasureImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitMeasureImplFromJson(json);

  @override
  final double amount;
  @override
  final String unitShort;
  @override
  @JsonKey()
  final String unitLong;

  @override
  String toString() {
    return 'UnitMeasure(amount: $amount, unitShort: $unitShort, unitLong: $unitLong)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitMeasureImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unitShort, unitShort) ||
                other.unitShort == unitShort) &&
            (identical(other.unitLong, unitLong) ||
                other.unitLong == unitLong));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, unitShort, unitLong);

  /// Create a copy of UnitMeasure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitMeasureImplCopyWith<_$UnitMeasureImpl> get copyWith =>
      __$$UnitMeasureImplCopyWithImpl<_$UnitMeasureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitMeasureImplToJson(
      this,
    );
  }
}

abstract class _UnitMeasure implements UnitMeasure {
  const factory _UnitMeasure(
      {required final double amount,
      required final String unitShort,
      final String unitLong}) = _$UnitMeasureImpl;

  factory _UnitMeasure.fromJson(Map<String, dynamic> json) =
      _$UnitMeasureImpl.fromJson;

  @override
  double get amount;
  @override
  String get unitShort;
  @override
  String get unitLong;

  /// Create a copy of UnitMeasure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnitMeasureImplCopyWith<_$UnitMeasureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
