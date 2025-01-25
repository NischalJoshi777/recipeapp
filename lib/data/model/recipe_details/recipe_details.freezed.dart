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
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  bool get vegan => throw _privateConstructorUsedError;
  @HiveField(2)
  bool get vegetarian => throw _privateConstructorUsedError;
  @HiveField(3)
  bool get dairyFree => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get glutenFree => throw _privateConstructorUsedError;
  @HiveField(5)
  bool get ketogenic => throw _privateConstructorUsedError;
  @HiveField(6)
  int get preparationMinutes => throw _privateConstructorUsedError;
  @HiveField(7)
  int get cookingMinutes => throw _privateConstructorUsedError;
  @HiveField(8)
  int get aggregateLikes => throw _privateConstructorUsedError;
  @HiveField(9)
  List<String> get dishTypes => throw _privateConstructorUsedError;
  @HiveField(10)
  String get summary => throw _privateConstructorUsedError;
  @HiveField(11)
  String get title => throw _privateConstructorUsedError;
  @HiveField(12)
  String get image => throw _privateConstructorUsedError;
  @HiveField(13)
  String get instructions => throw _privateConstructorUsedError;
  @HiveField(14)
  double get healthScore => throw _privateConstructorUsedError;
  @HiveField(15)
  int get servings => throw _privateConstructorUsedError;
  @HiveField(16)
  List<Ingredients> get extendedIngredients =>
      throw _privateConstructorUsedError;
  @HiveField(17)
  Nutrition get nutrition => throw _privateConstructorUsedError;

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
      {@HiveField(0) int id,
      @HiveField(1) bool vegan,
      @HiveField(2) bool vegetarian,
      @HiveField(3) bool dairyFree,
      @HiveField(4) bool glutenFree,
      @HiveField(5) bool ketogenic,
      @HiveField(6) int preparationMinutes,
      @HiveField(7) int cookingMinutes,
      @HiveField(8) int aggregateLikes,
      @HiveField(9) List<String> dishTypes,
      @HiveField(10) String summary,
      @HiveField(11) String title,
      @HiveField(12) String image,
      @HiveField(13) String instructions,
      @HiveField(14) double healthScore,
      @HiveField(15) int servings,
      @HiveField(16) List<Ingredients> extendedIngredients,
      @HiveField(17) Nutrition nutrition});

  $NutritionCopyWith<$Res> get nutrition;
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
    Object? nutrition = null,
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
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Nutrition,
    ) as $Val);
  }

  /// Create a copy of RecipeDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutritionCopyWith<$Res> get nutrition {
    return $NutritionCopyWith<$Res>(_value.nutrition, (value) {
      return _then(_value.copyWith(nutrition: value) as $Val);
    });
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
      {@HiveField(0) int id,
      @HiveField(1) bool vegan,
      @HiveField(2) bool vegetarian,
      @HiveField(3) bool dairyFree,
      @HiveField(4) bool glutenFree,
      @HiveField(5) bool ketogenic,
      @HiveField(6) int preparationMinutes,
      @HiveField(7) int cookingMinutes,
      @HiveField(8) int aggregateLikes,
      @HiveField(9) List<String> dishTypes,
      @HiveField(10) String summary,
      @HiveField(11) String title,
      @HiveField(12) String image,
      @HiveField(13) String instructions,
      @HiveField(14) double healthScore,
      @HiveField(15) int servings,
      @HiveField(16) List<Ingredients> extendedIngredients,
      @HiveField(17) Nutrition nutrition});

  @override
  $NutritionCopyWith<$Res> get nutrition;
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
    Object? nutrition = null,
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
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Nutrition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$RecipeDetailsImpl implements _RecipeDetails {
  const _$RecipeDetailsImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) this.vegan = false,
      @HiveField(2) this.vegetarian = false,
      @HiveField(3) this.dairyFree = false,
      @HiveField(4) this.glutenFree = false,
      @HiveField(5) this.ketogenic = false,
      @HiveField(6) this.preparationMinutes = 0,
      @HiveField(7) this.cookingMinutes = 0,
      @HiveField(8) this.aggregateLikes = 0,
      @HiveField(9) final List<String> dishTypes = const [],
      @HiveField(10) this.summary = 'N/A',
      @HiveField(11) this.title = 'N/A',
      @HiveField(12) required this.image,
      @HiveField(13) required this.instructions,
      @HiveField(14) this.healthScore = 0.0,
      @HiveField(15) required this.servings,
      @HiveField(16) final List<Ingredients> extendedIngredients = const [],
      @HiveField(17) required this.nutrition})
      : _dishTypes = dishTypes,
        _extendedIngredients = extendedIngredients;

  factory _$RecipeDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeDetailsImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @JsonKey()
  @HiveField(1)
  final bool vegan;
  @override
  @JsonKey()
  @HiveField(2)
  final bool vegetarian;
  @override
  @JsonKey()
  @HiveField(3)
  final bool dairyFree;
  @override
  @JsonKey()
  @HiveField(4)
  final bool glutenFree;
  @override
  @JsonKey()
  @HiveField(5)
  final bool ketogenic;
  @override
  @JsonKey()
  @HiveField(6)
  final int preparationMinutes;
  @override
  @JsonKey()
  @HiveField(7)
  final int cookingMinutes;
  @override
  @JsonKey()
  @HiveField(8)
  final int aggregateLikes;
  final List<String> _dishTypes;
  @override
  @JsonKey()
  @HiveField(9)
  List<String> get dishTypes {
    if (_dishTypes is EqualUnmodifiableListView) return _dishTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishTypes);
  }

  @override
  @JsonKey()
  @HiveField(10)
  final String summary;
  @override
  @JsonKey()
  @HiveField(11)
  final String title;
  @override
  @HiveField(12)
  final String image;
  @override
  @HiveField(13)
  final String instructions;
  @override
  @JsonKey()
  @HiveField(14)
  final double healthScore;
  @override
  @HiveField(15)
  final int servings;
  final List<Ingredients> _extendedIngredients;
  @override
  @JsonKey()
  @HiveField(16)
  List<Ingredients> get extendedIngredients {
    if (_extendedIngredients is EqualUnmodifiableListView)
      return _extendedIngredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extendedIngredients);
  }

  @override
  @HiveField(17)
  final Nutrition nutrition;

  @override
  String toString() {
    return 'RecipeDetails(id: $id, vegan: $vegan, vegetarian: $vegetarian, dairyFree: $dairyFree, glutenFree: $glutenFree, ketogenic: $ketogenic, preparationMinutes: $preparationMinutes, cookingMinutes: $cookingMinutes, aggregateLikes: $aggregateLikes, dishTypes: $dishTypes, summary: $summary, title: $title, image: $image, instructions: $instructions, healthScore: $healthScore, servings: $servings, extendedIngredients: $extendedIngredients, nutrition: $nutrition)';
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
                .equals(other._extendedIngredients, _extendedIngredients) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition));
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
      const DeepCollectionEquality().hash(_extendedIngredients),
      nutrition);

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
      {@HiveField(0) required final int id,
      @HiveField(1) final bool vegan,
      @HiveField(2) final bool vegetarian,
      @HiveField(3) final bool dairyFree,
      @HiveField(4) final bool glutenFree,
      @HiveField(5) final bool ketogenic,
      @HiveField(6) final int preparationMinutes,
      @HiveField(7) final int cookingMinutes,
      @HiveField(8) final int aggregateLikes,
      @HiveField(9) final List<String> dishTypes,
      @HiveField(10) final String summary,
      @HiveField(11) final String title,
      @HiveField(12) required final String image,
      @HiveField(13) required final String instructions,
      @HiveField(14) final double healthScore,
      @HiveField(15) required final int servings,
      @HiveField(16) final List<Ingredients> extendedIngredients,
      @HiveField(17) required final Nutrition nutrition}) = _$RecipeDetailsImpl;

  factory _RecipeDetails.fromJson(Map<String, dynamic> json) =
      _$RecipeDetailsImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  bool get vegan;
  @override
  @HiveField(2)
  bool get vegetarian;
  @override
  @HiveField(3)
  bool get dairyFree;
  @override
  @HiveField(4)
  bool get glutenFree;
  @override
  @HiveField(5)
  bool get ketogenic;
  @override
  @HiveField(6)
  int get preparationMinutes;
  @override
  @HiveField(7)
  int get cookingMinutes;
  @override
  @HiveField(8)
  int get aggregateLikes;
  @override
  @HiveField(9)
  List<String> get dishTypes;
  @override
  @HiveField(10)
  String get summary;
  @override
  @HiveField(11)
  String get title;
  @override
  @HiveField(12)
  String get image;
  @override
  @HiveField(13)
  String get instructions;
  @override
  @HiveField(14)
  double get healthScore;
  @override
  @HiveField(15)
  int get servings;
  @override
  @HiveField(16)
  List<Ingredients> get extendedIngredients;
  @override
  @HiveField(17)
  Nutrition get nutrition;

  /// Create a copy of RecipeDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeDetailsImplCopyWith<_$RecipeDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Nutrition _$NutritionFromJson(Map<String, dynamic> json) {
  return _Nutrition.fromJson(json);
}

/// @nodoc
mixin _$Nutrition {
  @HiveField(0)
  CaloricBreakDown get caloricBreakdown => throw _privateConstructorUsedError;
  @HiveField(1)
  List<Nutrients> get nutrients => throw _privateConstructorUsedError;

  /// Serializes this Nutrition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Nutrition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NutritionCopyWith<Nutrition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionCopyWith<$Res> {
  factory $NutritionCopyWith(Nutrition value, $Res Function(Nutrition) then) =
      _$NutritionCopyWithImpl<$Res, Nutrition>;
  @useResult
  $Res call(
      {@HiveField(0) CaloricBreakDown caloricBreakdown,
      @HiveField(1) List<Nutrients> nutrients});

  $CaloricBreakDownCopyWith<$Res> get caloricBreakdown;
}

/// @nodoc
class _$NutritionCopyWithImpl<$Res, $Val extends Nutrition>
    implements $NutritionCopyWith<$Res> {
  _$NutritionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Nutrition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caloricBreakdown = null,
    Object? nutrients = null,
  }) {
    return _then(_value.copyWith(
      caloricBreakdown: null == caloricBreakdown
          ? _value.caloricBreakdown
          : caloricBreakdown // ignore: cast_nullable_to_non_nullable
              as CaloricBreakDown,
      nutrients: null == nutrients
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as List<Nutrients>,
    ) as $Val);
  }

  /// Create a copy of Nutrition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CaloricBreakDownCopyWith<$Res> get caloricBreakdown {
    return $CaloricBreakDownCopyWith<$Res>(_value.caloricBreakdown, (value) {
      return _then(_value.copyWith(caloricBreakdown: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NutritionImplCopyWith<$Res>
    implements $NutritionCopyWith<$Res> {
  factory _$$NutritionImplCopyWith(
          _$NutritionImpl value, $Res Function(_$NutritionImpl) then) =
      __$$NutritionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) CaloricBreakDown caloricBreakdown,
      @HiveField(1) List<Nutrients> nutrients});

  @override
  $CaloricBreakDownCopyWith<$Res> get caloricBreakdown;
}

/// @nodoc
class __$$NutritionImplCopyWithImpl<$Res>
    extends _$NutritionCopyWithImpl<$Res, _$NutritionImpl>
    implements _$$NutritionImplCopyWith<$Res> {
  __$$NutritionImplCopyWithImpl(
      _$NutritionImpl _value, $Res Function(_$NutritionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Nutrition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caloricBreakdown = null,
    Object? nutrients = null,
  }) {
    return _then(_$NutritionImpl(
      caloricBreakdown: null == caloricBreakdown
          ? _value.caloricBreakdown
          : caloricBreakdown // ignore: cast_nullable_to_non_nullable
              as CaloricBreakDown,
      nutrients: null == nutrients
          ? _value._nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as List<Nutrients>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$NutritionImpl implements _Nutrition {
  const _$NutritionImpl(
      {@HiveField(0) required this.caloricBreakdown,
      @HiveField(1) final List<Nutrients> nutrients = const []})
      : _nutrients = nutrients;

  factory _$NutritionImpl.fromJson(Map<String, dynamic> json) =>
      _$$NutritionImplFromJson(json);

  @override
  @HiveField(0)
  final CaloricBreakDown caloricBreakdown;
  final List<Nutrients> _nutrients;
  @override
  @JsonKey()
  @HiveField(1)
  List<Nutrients> get nutrients {
    if (_nutrients is EqualUnmodifiableListView) return _nutrients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nutrients);
  }

  @override
  String toString() {
    return 'Nutrition(caloricBreakdown: $caloricBreakdown, nutrients: $nutrients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NutritionImpl &&
            (identical(other.caloricBreakdown, caloricBreakdown) ||
                other.caloricBreakdown == caloricBreakdown) &&
            const DeepCollectionEquality()
                .equals(other._nutrients, _nutrients));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, caloricBreakdown,
      const DeepCollectionEquality().hash(_nutrients));

  /// Create a copy of Nutrition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NutritionImplCopyWith<_$NutritionImpl> get copyWith =>
      __$$NutritionImplCopyWithImpl<_$NutritionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NutritionImplToJson(
      this,
    );
  }
}

abstract class _Nutrition implements Nutrition {
  const factory _Nutrition(
      {@HiveField(0) required final CaloricBreakDown caloricBreakdown,
      @HiveField(1) final List<Nutrients> nutrients}) = _$NutritionImpl;

  factory _Nutrition.fromJson(Map<String, dynamic> json) =
      _$NutritionImpl.fromJson;

  @override
  @HiveField(0)
  CaloricBreakDown get caloricBreakdown;
  @override
  @HiveField(1)
  List<Nutrients> get nutrients;

  /// Create a copy of Nutrition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NutritionImplCopyWith<_$NutritionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Nutrients _$NutrientsFromJson(Map<String, dynamic> json) {
  return _Nutrients.fromJson(json);
}

/// @nodoc
mixin _$Nutrients {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  double get amount => throw _privateConstructorUsedError;
  @HiveField(2)
  String get unit => throw _privateConstructorUsedError;

  /// Serializes this Nutrients to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Nutrients
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NutrientsCopyWith<Nutrients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrientsCopyWith<$Res> {
  factory $NutrientsCopyWith(Nutrients value, $Res Function(Nutrients) then) =
      _$NutrientsCopyWithImpl<$Res, Nutrients>;
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) double amount,
      @HiveField(2) String unit});
}

/// @nodoc
class _$NutrientsCopyWithImpl<$Res, $Val extends Nutrients>
    implements $NutrientsCopyWith<$Res> {
  _$NutrientsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Nutrients
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NutrientsImplCopyWith<$Res>
    implements $NutrientsCopyWith<$Res> {
  factory _$$NutrientsImplCopyWith(
          _$NutrientsImpl value, $Res Function(_$NutrientsImpl) then) =
      __$$NutrientsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) double amount,
      @HiveField(2) String unit});
}

/// @nodoc
class __$$NutrientsImplCopyWithImpl<$Res>
    extends _$NutrientsCopyWithImpl<$Res, _$NutrientsImpl>
    implements _$$NutrientsImplCopyWith<$Res> {
  __$$NutrientsImplCopyWithImpl(
      _$NutrientsImpl _value, $Res Function(_$NutrientsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Nutrients
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$NutrientsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2)
class _$NutrientsImpl implements _Nutrients {
  const _$NutrientsImpl(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.amount,
      @HiveField(2) required this.unit});

  factory _$NutrientsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NutrientsImplFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final double amount;
  @override
  @HiveField(2)
  final String unit;

  @override
  String toString() {
    return 'Nutrients(name: $name, amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NutrientsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, amount, unit);

  /// Create a copy of Nutrients
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NutrientsImplCopyWith<_$NutrientsImpl> get copyWith =>
      __$$NutrientsImplCopyWithImpl<_$NutrientsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NutrientsImplToJson(
      this,
    );
  }
}

abstract class _Nutrients implements Nutrients {
  const factory _Nutrients(
      {@HiveField(0) required final String name,
      @HiveField(1) required final double amount,
      @HiveField(2) required final String unit}) = _$NutrientsImpl;

  factory _Nutrients.fromJson(Map<String, dynamic> json) =
      _$NutrientsImpl.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  double get amount;
  @override
  @HiveField(2)
  String get unit;

  /// Create a copy of Nutrients
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NutrientsImplCopyWith<_$NutrientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CaloricBreakDown _$CaloricBreakDownFromJson(Map<String, dynamic> json) {
  return _CaloricBreakDown.fromJson(json);
}

/// @nodoc
mixin _$CaloricBreakDown {
  @HiveField(0)
  double get percentProtein => throw _privateConstructorUsedError;
  @HiveField(1)
  double get percentFat => throw _privateConstructorUsedError;
  @HiveField(2)
  double get percentCarbs => throw _privateConstructorUsedError;

  /// Serializes this CaloricBreakDown to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CaloricBreakDown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CaloricBreakDownCopyWith<CaloricBreakDown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaloricBreakDownCopyWith<$Res> {
  factory $CaloricBreakDownCopyWith(
          CaloricBreakDown value, $Res Function(CaloricBreakDown) then) =
      _$CaloricBreakDownCopyWithImpl<$Res, CaloricBreakDown>;
  @useResult
  $Res call(
      {@HiveField(0) double percentProtein,
      @HiveField(1) double percentFat,
      @HiveField(2) double percentCarbs});
}

/// @nodoc
class _$CaloricBreakDownCopyWithImpl<$Res, $Val extends CaloricBreakDown>
    implements $CaloricBreakDownCopyWith<$Res> {
  _$CaloricBreakDownCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CaloricBreakDown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentProtein = null,
    Object? percentFat = null,
    Object? percentCarbs = null,
  }) {
    return _then(_value.copyWith(
      percentProtein: null == percentProtein
          ? _value.percentProtein
          : percentProtein // ignore: cast_nullable_to_non_nullable
              as double,
      percentFat: null == percentFat
          ? _value.percentFat
          : percentFat // ignore: cast_nullable_to_non_nullable
              as double,
      percentCarbs: null == percentCarbs
          ? _value.percentCarbs
          : percentCarbs // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CaloricBreakDownImplCopyWith<$Res>
    implements $CaloricBreakDownCopyWith<$Res> {
  factory _$$CaloricBreakDownImplCopyWith(_$CaloricBreakDownImpl value,
          $Res Function(_$CaloricBreakDownImpl) then) =
      __$$CaloricBreakDownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) double percentProtein,
      @HiveField(1) double percentFat,
      @HiveField(2) double percentCarbs});
}

/// @nodoc
class __$$CaloricBreakDownImplCopyWithImpl<$Res>
    extends _$CaloricBreakDownCopyWithImpl<$Res, _$CaloricBreakDownImpl>
    implements _$$CaloricBreakDownImplCopyWith<$Res> {
  __$$CaloricBreakDownImplCopyWithImpl(_$CaloricBreakDownImpl _value,
      $Res Function(_$CaloricBreakDownImpl) _then)
      : super(_value, _then);

  /// Create a copy of CaloricBreakDown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentProtein = null,
    Object? percentFat = null,
    Object? percentCarbs = null,
  }) {
    return _then(_$CaloricBreakDownImpl(
      percentProtein: null == percentProtein
          ? _value.percentProtein
          : percentProtein // ignore: cast_nullable_to_non_nullable
              as double,
      percentFat: null == percentFat
          ? _value.percentFat
          : percentFat // ignore: cast_nullable_to_non_nullable
              as double,
      percentCarbs: null == percentCarbs
          ? _value.percentCarbs
          : percentCarbs // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3)
class _$CaloricBreakDownImpl implements _CaloricBreakDown {
  const _$CaloricBreakDownImpl(
      {@HiveField(0) required this.percentProtein,
      @HiveField(1) required this.percentFat,
      @HiveField(2) required this.percentCarbs});

  factory _$CaloricBreakDownImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaloricBreakDownImplFromJson(json);

  @override
  @HiveField(0)
  final double percentProtein;
  @override
  @HiveField(1)
  final double percentFat;
  @override
  @HiveField(2)
  final double percentCarbs;

  @override
  String toString() {
    return 'CaloricBreakDown(percentProtein: $percentProtein, percentFat: $percentFat, percentCarbs: $percentCarbs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaloricBreakDownImpl &&
            (identical(other.percentProtein, percentProtein) ||
                other.percentProtein == percentProtein) &&
            (identical(other.percentFat, percentFat) ||
                other.percentFat == percentFat) &&
            (identical(other.percentCarbs, percentCarbs) ||
                other.percentCarbs == percentCarbs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, percentProtein, percentFat, percentCarbs);

  /// Create a copy of CaloricBreakDown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CaloricBreakDownImplCopyWith<_$CaloricBreakDownImpl> get copyWith =>
      __$$CaloricBreakDownImplCopyWithImpl<_$CaloricBreakDownImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaloricBreakDownImplToJson(
      this,
    );
  }
}

abstract class _CaloricBreakDown implements CaloricBreakDown {
  const factory _CaloricBreakDown(
          {@HiveField(0) required final double percentProtein,
          @HiveField(1) required final double percentFat,
          @HiveField(2) required final double percentCarbs}) =
      _$CaloricBreakDownImpl;

  factory _CaloricBreakDown.fromJson(Map<String, dynamic> json) =
      _$CaloricBreakDownImpl.fromJson;

  @override
  @HiveField(0)
  double get percentProtein;
  @override
  @HiveField(1)
  double get percentFat;
  @override
  @HiveField(2)
  double get percentCarbs;

  /// Create a copy of CaloricBreakDown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CaloricBreakDownImplCopyWith<_$CaloricBreakDownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ingredients _$IngredientsFromJson(Map<String, dynamic> json) {
  return _Ingredients.fromJson(json);
}

/// @nodoc
mixin _$Ingredients {
  @HiveField(0)
  String? get image => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
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
  $Res call(
      {@HiveField(0) String? image,
      @HiveField(1) String name,
      @HiveField(2) Measure measures});

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
  $Res call(
      {@HiveField(0) String? image,
      @HiveField(1) String name,
      @HiveField(2) Measure measures});

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
@HiveType(typeId: 4)
class _$IngredientsImpl implements _Ingredients {
  const _$IngredientsImpl(
      {@HiveField(0) this.image,
      @HiveField(1) this.name = 'N/A',
      @HiveField(2) required this.measures});

  factory _$IngredientsImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientsImplFromJson(json);

  @override
  @HiveField(0)
  final String? image;
  @override
  @JsonKey()
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
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
      {@HiveField(0) final String? image,
      @HiveField(1) final String name,
      @HiveField(2) required final Measure measures}) = _$IngredientsImpl;

  factory _Ingredients.fromJson(Map<String, dynamic> json) =
      _$IngredientsImpl.fromJson;

  @override
  @HiveField(0)
  String? get image;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
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
  @HiveField(0)
  UnitMeasure get metric => throw _privateConstructorUsedError;
  @HiveField(1)
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
  $Res call({@HiveField(0) UnitMeasure metric, @HiveField(1) UnitMeasure us});

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
  $Res call({@HiveField(0) UnitMeasure metric, @HiveField(1) UnitMeasure us});

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
@HiveType(typeId: 5)
class _$MeasureImpl implements _Measure {
  const _$MeasureImpl(
      {@HiveField(0) required this.metric, @HiveField(1) required this.us});

  factory _$MeasureImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeasureImplFromJson(json);

  @override
  @HiveField(0)
  final UnitMeasure metric;
  @override
  @HiveField(1)
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
      {@HiveField(0) required final UnitMeasure metric,
      @HiveField(1) required final UnitMeasure us}) = _$MeasureImpl;

  factory _Measure.fromJson(Map<String, dynamic> json) = _$MeasureImpl.fromJson;

  @override
  @HiveField(0)
  UnitMeasure get metric;
  @override
  @HiveField(1)
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
  @HiveField(0)
  double get amount => throw _privateConstructorUsedError;
  @HiveField(1)
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
  $Res call(
      {@HiveField(0) double amount,
      @HiveField(1) String unitShort,
      String unitLong});
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
  $Res call(
      {@HiveField(0) double amount,
      @HiveField(1) String unitShort,
      String unitLong});
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
@HiveType(typeId: 6)
class _$UnitMeasureImpl implements _UnitMeasure {
  const _$UnitMeasureImpl(
      {@HiveField(0) required this.amount,
      @HiveField(1) required this.unitShort,
      this.unitLong = 'N/A'});

  factory _$UnitMeasureImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitMeasureImplFromJson(json);

  @override
  @HiveField(0)
  final double amount;
  @override
  @HiveField(1)
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
      {@HiveField(0) required final double amount,
      @HiveField(1) required final String unitShort,
      final String unitLong}) = _$UnitMeasureImpl;

  factory _UnitMeasure.fromJson(Map<String, dynamic> json) =
      _$UnitMeasureImpl.fromJson;

  @override
  @HiveField(0)
  double get amount;
  @override
  @HiveField(1)
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
