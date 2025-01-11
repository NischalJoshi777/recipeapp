// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeVM {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get chef => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get cookingMinutes => throw _privateConstructorUsedError;

  /// Create a copy of RecipeVM
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipeVMCopyWith<RecipeVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeVMCopyWith<$Res> {
  factory $RecipeVMCopyWith(RecipeVM value, $Res Function(RecipeVM) then) =
      _$RecipeVMCopyWithImpl<$Res, RecipeVM>;
  @useResult
  $Res call(
      {int id, String title, String chef, String image, int cookingMinutes});
}

/// @nodoc
class _$RecipeVMCopyWithImpl<$Res, $Val extends RecipeVM>
    implements $RecipeVMCopyWith<$Res> {
  _$RecipeVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipeVM
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? chef = null,
    Object? image = null,
    Object? cookingMinutes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      chef: null == chef
          ? _value.chef
          : chef // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      cookingMinutes: null == cookingMinutes
          ? _value.cookingMinutes
          : cookingMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeVMImplCopyWith<$Res>
    implements $RecipeVMCopyWith<$Res> {
  factory _$$RecipeVMImplCopyWith(
          _$RecipeVMImpl value, $Res Function(_$RecipeVMImpl) then) =
      __$$RecipeVMImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String title, String chef, String image, int cookingMinutes});
}

/// @nodoc
class __$$RecipeVMImplCopyWithImpl<$Res>
    extends _$RecipeVMCopyWithImpl<$Res, _$RecipeVMImpl>
    implements _$$RecipeVMImplCopyWith<$Res> {
  __$$RecipeVMImplCopyWithImpl(
      _$RecipeVMImpl _value, $Res Function(_$RecipeVMImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeVM
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? chef = null,
    Object? image = null,
    Object? cookingMinutes = null,
  }) {
    return _then(_$RecipeVMImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      chef: null == chef
          ? _value.chef
          : chef // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      cookingMinutes: null == cookingMinutes
          ? _value.cookingMinutes
          : cookingMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RecipeVMImpl implements _RecipeVM {
  const _$RecipeVMImpl(
      {required this.id,
      required this.title,
      required this.chef,
      required this.image,
      required this.cookingMinutes});

  @override
  final int id;
  @override
  final String title;
  @override
  final String chef;
  @override
  final String image;
  @override
  final int cookingMinutes;

  @override
  String toString() {
    return 'RecipeVM(id: $id, title: $title, chef: $chef, image: $image, cookingMinutes: $cookingMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeVMImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.chef, chef) || other.chef == chef) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.cookingMinutes, cookingMinutes) ||
                other.cookingMinutes == cookingMinutes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, chef, image, cookingMinutes);

  /// Create a copy of RecipeVM
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeVMImplCopyWith<_$RecipeVMImpl> get copyWith =>
      __$$RecipeVMImplCopyWithImpl<_$RecipeVMImpl>(this, _$identity);
}

abstract class _RecipeVM implements RecipeVM {
  const factory _RecipeVM(
      {required final int id,
      required final String title,
      required final String chef,
      required final String image,
      required final int cookingMinutes}) = _$RecipeVMImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String get chef;
  @override
  String get image;
  @override
  int get cookingMinutes;

  /// Create a copy of RecipeVM
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeVMImplCopyWith<_$RecipeVMImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
