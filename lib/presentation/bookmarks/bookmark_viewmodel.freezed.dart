// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookmarkViewModel {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  int get totalPrepTime => throw _privateConstructorUsedError;
  double get healthScore => throw _privateConstructorUsedError;
  List<String> get dishTypes => throw _privateConstructorUsedError;

  /// Create a copy of BookmarkViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookmarkViewModelCopyWith<BookmarkViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkViewModelCopyWith<$Res> {
  factory $BookmarkViewModelCopyWith(
          BookmarkViewModel value, $Res Function(BookmarkViewModel) then) =
      _$BookmarkViewModelCopyWithImpl<$Res, BookmarkViewModel>;
  @useResult
  $Res call(
      {int id,
      String image,
      String title,
      String summary,
      int totalPrepTime,
      double healthScore,
      List<String> dishTypes});
}

/// @nodoc
class _$BookmarkViewModelCopyWithImpl<$Res, $Val extends BookmarkViewModel>
    implements $BookmarkViewModelCopyWith<$Res> {
  _$BookmarkViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarkViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? title = null,
    Object? summary = null,
    Object? totalPrepTime = null,
    Object? healthScore = null,
    Object? dishTypes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrepTime: null == totalPrepTime
          ? _value.totalPrepTime
          : totalPrepTime // ignore: cast_nullable_to_non_nullable
              as int,
      healthScore: null == healthScore
          ? _value.healthScore
          : healthScore // ignore: cast_nullable_to_non_nullable
              as double,
      dishTypes: null == dishTypes
          ? _value.dishTypes
          : dishTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarkViewModelImplCopyWith<$Res>
    implements $BookmarkViewModelCopyWith<$Res> {
  factory _$$BookmarkViewModelImplCopyWith(_$BookmarkViewModelImpl value,
          $Res Function(_$BookmarkViewModelImpl) then) =
      __$$BookmarkViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String image,
      String title,
      String summary,
      int totalPrepTime,
      double healthScore,
      List<String> dishTypes});
}

/// @nodoc
class __$$BookmarkViewModelImplCopyWithImpl<$Res>
    extends _$BookmarkViewModelCopyWithImpl<$Res, _$BookmarkViewModelImpl>
    implements _$$BookmarkViewModelImplCopyWith<$Res> {
  __$$BookmarkViewModelImplCopyWithImpl(_$BookmarkViewModelImpl _value,
      $Res Function(_$BookmarkViewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarkViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? title = null,
    Object? summary = null,
    Object? totalPrepTime = null,
    Object? healthScore = null,
    Object? dishTypes = null,
  }) {
    return _then(_$BookmarkViewModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrepTime: null == totalPrepTime
          ? _value.totalPrepTime
          : totalPrepTime // ignore: cast_nullable_to_non_nullable
              as int,
      healthScore: null == healthScore
          ? _value.healthScore
          : healthScore // ignore: cast_nullable_to_non_nullable
              as double,
      dishTypes: null == dishTypes
          ? _value._dishTypes
          : dishTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$BookmarkViewModelImpl implements _BookmarkViewModel {
  const _$BookmarkViewModelImpl(
      {required this.id,
      required this.image,
      required this.title,
      required this.summary,
      required this.totalPrepTime,
      required this.healthScore,
      required final List<String> dishTypes})
      : _dishTypes = dishTypes;

  @override
  final int id;
  @override
  final String image;
  @override
  final String title;
  @override
  final String summary;
  @override
  final int totalPrepTime;
  @override
  final double healthScore;
  final List<String> _dishTypes;
  @override
  List<String> get dishTypes {
    if (_dishTypes is EqualUnmodifiableListView) return _dishTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishTypes);
  }

  @override
  String toString() {
    return 'BookmarkViewModel(id: $id, image: $image, title: $title, summary: $summary, totalPrepTime: $totalPrepTime, healthScore: $healthScore, dishTypes: $dishTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkViewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.totalPrepTime, totalPrepTime) ||
                other.totalPrepTime == totalPrepTime) &&
            (identical(other.healthScore, healthScore) ||
                other.healthScore == healthScore) &&
            const DeepCollectionEquality()
                .equals(other._dishTypes, _dishTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      image,
      title,
      summary,
      totalPrepTime,
      healthScore,
      const DeepCollectionEquality().hash(_dishTypes));

  /// Create a copy of BookmarkViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkViewModelImplCopyWith<_$BookmarkViewModelImpl> get copyWith =>
      __$$BookmarkViewModelImplCopyWithImpl<_$BookmarkViewModelImpl>(
          this, _$identity);
}

abstract class _BookmarkViewModel implements BookmarkViewModel {
  const factory _BookmarkViewModel(
      {required final int id,
      required final String image,
      required final String title,
      required final String summary,
      required final int totalPrepTime,
      required final double healthScore,
      required final List<String> dishTypes}) = _$BookmarkViewModelImpl;

  @override
  int get id;
  @override
  String get image;
  @override
  String get title;
  @override
  String get summary;
  @override
  int get totalPrepTime;
  @override
  double get healthScore;
  @override
  List<String> get dishTypes;

  /// Create a copy of BookmarkViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkViewModelImplCopyWith<_$BookmarkViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
