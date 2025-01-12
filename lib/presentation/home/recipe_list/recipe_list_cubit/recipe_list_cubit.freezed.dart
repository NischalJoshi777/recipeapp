// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeListState {
  dynamic get isFirstFetch => throw _privateConstructorUsedError;
  List<RecipeVM> get recipes => throw _privateConstructorUsedError;
  RecipeListStatus get listStatus => throw _privateConstructorUsedError;

  /// Create a copy of RecipeListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipeListStateCopyWith<RecipeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeListStateCopyWith<$Res> {
  factory $RecipeListStateCopyWith(
          RecipeListState value, $Res Function(RecipeListState) then) =
      _$RecipeListStateCopyWithImpl<$Res, RecipeListState>;
  @useResult
  $Res call(
      {dynamic isFirstFetch,
      List<RecipeVM> recipes,
      RecipeListStatus listStatus});

  $RecipeListStatusCopyWith<$Res> get listStatus;
}

/// @nodoc
class _$RecipeListStateCopyWithImpl<$Res, $Val extends RecipeListState>
    implements $RecipeListStateCopyWith<$Res> {
  _$RecipeListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipeListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstFetch = freezed,
    Object? recipes = null,
    Object? listStatus = null,
  }) {
    return _then(_value.copyWith(
      isFirstFetch: freezed == isFirstFetch
          ? _value.isFirstFetch
          : isFirstFetch // ignore: cast_nullable_to_non_nullable
              as dynamic,
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeVM>,
      listStatus: null == listStatus
          ? _value.listStatus
          : listStatus // ignore: cast_nullable_to_non_nullable
              as RecipeListStatus,
    ) as $Val);
  }

  /// Create a copy of RecipeListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeListStatusCopyWith<$Res> get listStatus {
    return $RecipeListStatusCopyWith<$Res>(_value.listStatus, (value) {
      return _then(_value.copyWith(listStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipeListStateImplCopyWith<$Res>
    implements $RecipeListStateCopyWith<$Res> {
  factory _$$RecipeListStateImplCopyWith(_$RecipeListStateImpl value,
          $Res Function(_$RecipeListStateImpl) then) =
      __$$RecipeListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic isFirstFetch,
      List<RecipeVM> recipes,
      RecipeListStatus listStatus});

  @override
  $RecipeListStatusCopyWith<$Res> get listStatus;
}

/// @nodoc
class __$$RecipeListStateImplCopyWithImpl<$Res>
    extends _$RecipeListStateCopyWithImpl<$Res, _$RecipeListStateImpl>
    implements _$$RecipeListStateImplCopyWith<$Res> {
  __$$RecipeListStateImplCopyWithImpl(
      _$RecipeListStateImpl _value, $Res Function(_$RecipeListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstFetch = freezed,
    Object? recipes = null,
    Object? listStatus = null,
  }) {
    return _then(_$RecipeListStateImpl(
      isFirstFetch:
          freezed == isFirstFetch ? _value.isFirstFetch! : isFirstFetch,
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeVM>,
      listStatus: null == listStatus
          ? _value.listStatus
          : listStatus // ignore: cast_nullable_to_non_nullable
              as RecipeListStatus,
    ));
  }
}

/// @nodoc

class _$RecipeListStateImpl implements _RecipeListState {
  const _$RecipeListStateImpl(
      {this.isFirstFetch = true,
      final List<RecipeVM> recipes = const [],
      this.listStatus = const RecipeListStatus.loading()})
      : _recipes = recipes;

  @override
  @JsonKey()
  final dynamic isFirstFetch;
  final List<RecipeVM> _recipes;
  @override
  @JsonKey()
  List<RecipeVM> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  @JsonKey()
  final RecipeListStatus listStatus;

  @override
  String toString() {
    return 'RecipeListState(isFirstFetch: $isFirstFetch, recipes: $recipes, listStatus: $listStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeListStateImpl &&
            const DeepCollectionEquality()
                .equals(other.isFirstFetch, isFirstFetch) &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.listStatus, listStatus) ||
                other.listStatus == listStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isFirstFetch),
      const DeepCollectionEquality().hash(_recipes),
      listStatus);

  /// Create a copy of RecipeListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeListStateImplCopyWith<_$RecipeListStateImpl> get copyWith =>
      __$$RecipeListStateImplCopyWithImpl<_$RecipeListStateImpl>(
          this, _$identity);
}

abstract class _RecipeListState implements RecipeListState {
  const factory _RecipeListState(
      {final dynamic isFirstFetch,
      final List<RecipeVM> recipes,
      final RecipeListStatus listStatus}) = _$RecipeListStateImpl;

  @override
  dynamic get isFirstFetch;
  @override
  List<RecipeVM> get recipes;
  @override
  RecipeListStatus get listStatus;

  /// Create a copy of RecipeListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeListStateImplCopyWith<_$RecipeListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecipeListStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeListStatusLoading value) loading,
    required TResult Function(RecipeListStatusLoaded value) loaded,
    required TResult Function(RecipeListStatusError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeListStatusLoading value)? loading,
    TResult? Function(RecipeListStatusLoaded value)? loaded,
    TResult? Function(RecipeListStatusError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeListStatusLoading value)? loading,
    TResult Function(RecipeListStatusLoaded value)? loaded,
    TResult Function(RecipeListStatusError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeListStatusCopyWith<$Res> {
  factory $RecipeListStatusCopyWith(
          RecipeListStatus value, $Res Function(RecipeListStatus) then) =
      _$RecipeListStatusCopyWithImpl<$Res, RecipeListStatus>;
}

/// @nodoc
class _$RecipeListStatusCopyWithImpl<$Res, $Val extends RecipeListStatus>
    implements $RecipeListStatusCopyWith<$Res> {
  _$RecipeListStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipeListStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RecipeListStatusLoadingImplCopyWith<$Res> {
  factory _$$RecipeListStatusLoadingImplCopyWith(
          _$RecipeListStatusLoadingImpl value,
          $Res Function(_$RecipeListStatusLoadingImpl) then) =
      __$$RecipeListStatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeListStatusLoadingImplCopyWithImpl<$Res>
    extends _$RecipeListStatusCopyWithImpl<$Res, _$RecipeListStatusLoadingImpl>
    implements _$$RecipeListStatusLoadingImplCopyWith<$Res> {
  __$$RecipeListStatusLoadingImplCopyWithImpl(
      _$RecipeListStatusLoadingImpl _value,
      $Res Function(_$RecipeListStatusLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeListStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecipeListStatusLoadingImpl implements RecipeListStatusLoading {
  const _$RecipeListStatusLoadingImpl();

  @override
  String toString() {
    return 'RecipeListStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeListStatusLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeListStatusLoading value) loading,
    required TResult Function(RecipeListStatusLoaded value) loaded,
    required TResult Function(RecipeListStatusError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeListStatusLoading value)? loading,
    TResult? Function(RecipeListStatusLoaded value)? loaded,
    TResult? Function(RecipeListStatusError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeListStatusLoading value)? loading,
    TResult Function(RecipeListStatusLoaded value)? loaded,
    TResult Function(RecipeListStatusError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RecipeListStatusLoading implements RecipeListStatus {
  const factory RecipeListStatusLoading() = _$RecipeListStatusLoadingImpl;
}

/// @nodoc
abstract class _$$RecipeListStatusLoadedImplCopyWith<$Res> {
  factory _$$RecipeListStatusLoadedImplCopyWith(
          _$RecipeListStatusLoadedImpl value,
          $Res Function(_$RecipeListStatusLoadedImpl) then) =
      __$$RecipeListStatusLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeListStatusLoadedImplCopyWithImpl<$Res>
    extends _$RecipeListStatusCopyWithImpl<$Res, _$RecipeListStatusLoadedImpl>
    implements _$$RecipeListStatusLoadedImplCopyWith<$Res> {
  __$$RecipeListStatusLoadedImplCopyWithImpl(
      _$RecipeListStatusLoadedImpl _value,
      $Res Function(_$RecipeListStatusLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeListStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecipeListStatusLoadedImpl implements RecipeListStatusLoaded {
  const _$RecipeListStatusLoadedImpl();

  @override
  String toString() {
    return 'RecipeListStatus.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeListStatusLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeListStatusLoading value) loading,
    required TResult Function(RecipeListStatusLoaded value) loaded,
    required TResult Function(RecipeListStatusError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeListStatusLoading value)? loading,
    TResult? Function(RecipeListStatusLoaded value)? loaded,
    TResult? Function(RecipeListStatusError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeListStatusLoading value)? loading,
    TResult Function(RecipeListStatusLoaded value)? loaded,
    TResult Function(RecipeListStatusError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RecipeListStatusLoaded implements RecipeListStatus {
  const factory RecipeListStatusLoaded() = _$RecipeListStatusLoadedImpl;
}

/// @nodoc
abstract class _$$RecipeListStatusErrorImplCopyWith<$Res> {
  factory _$$RecipeListStatusErrorImplCopyWith(
          _$RecipeListStatusErrorImpl value,
          $Res Function(_$RecipeListStatusErrorImpl) then) =
      __$$RecipeListStatusErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RecipeListStatusErrorImplCopyWithImpl<$Res>
    extends _$RecipeListStatusCopyWithImpl<$Res, _$RecipeListStatusErrorImpl>
    implements _$$RecipeListStatusErrorImplCopyWith<$Res> {
  __$$RecipeListStatusErrorImplCopyWithImpl(_$RecipeListStatusErrorImpl _value,
      $Res Function(_$RecipeListStatusErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeListStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RecipeListStatusErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecipeListStatusErrorImpl implements RecipeListStatusError {
  const _$RecipeListStatusErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RecipeListStatus.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeListStatusErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RecipeListStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeListStatusErrorImplCopyWith<_$RecipeListStatusErrorImpl>
      get copyWith => __$$RecipeListStatusErrorImplCopyWithImpl<
          _$RecipeListStatusErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeListStatusLoading value) loading,
    required TResult Function(RecipeListStatusLoaded value) loaded,
    required TResult Function(RecipeListStatusError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeListStatusLoading value)? loading,
    TResult? Function(RecipeListStatusLoaded value)? loaded,
    TResult? Function(RecipeListStatusError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeListStatusLoading value)? loading,
    TResult Function(RecipeListStatusLoaded value)? loaded,
    TResult Function(RecipeListStatusError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RecipeListStatusError implements RecipeListStatus {
  const factory RecipeListStatusError({required final String message}) =
      _$RecipeListStatusErrorImpl;

  String get message;

  /// Create a copy of RecipeListStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeListStatusErrorImplCopyWith<_$RecipeListStatusErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
