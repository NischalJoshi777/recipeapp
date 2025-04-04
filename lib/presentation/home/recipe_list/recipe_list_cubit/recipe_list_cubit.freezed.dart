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
  int get offset => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  dynamic get isFirstFetch => throw _privateConstructorUsedError;
  List<RecipeVM> get recipes => throw _privateConstructorUsedError;
  Filter get filter => throw _privateConstructorUsedError;
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
      {int offset,
      String query,
      String category,
      dynamic isFirstFetch,
      List<RecipeVM> recipes,
      Filter filter,
      RecipeListStatus listStatus});

  $FilterCopyWith<$Res> get filter;
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
    Object? offset = null,
    Object? query = null,
    Object? category = null,
    Object? isFirstFetch = freezed,
    Object? recipes = null,
    Object? filter = null,
    Object? listStatus = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      isFirstFetch: freezed == isFirstFetch
          ? _value.isFirstFetch
          : isFirstFetch // ignore: cast_nullable_to_non_nullable
              as dynamic,
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeVM>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
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
  $FilterCopyWith<$Res> get filter {
    return $FilterCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value) as $Val);
    });
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
      {int offset,
      String query,
      String category,
      dynamic isFirstFetch,
      List<RecipeVM> recipes,
      Filter filter,
      RecipeListStatus listStatus});

  @override
  $FilterCopyWith<$Res> get filter;
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
    Object? offset = null,
    Object? query = null,
    Object? category = null,
    Object? isFirstFetch = freezed,
    Object? recipes = null,
    Object? filter = null,
    Object? listStatus = null,
  }) {
    return _then(_$RecipeListStateImpl(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      isFirstFetch:
          freezed == isFirstFetch ? _value.isFirstFetch! : isFirstFetch,
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeVM>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
      listStatus: null == listStatus
          ? _value.listStatus
          : listStatus // ignore: cast_nullable_to_non_nullable
              as RecipeListStatus,
    ));
  }
}

/// @nodoc

class _$RecipeListStateImpl implements _RecipeListState {
  _$RecipeListStateImpl(
      {this.offset = 0,
      this.query = '',
      this.category = '',
      this.isFirstFetch = true,
      final List<RecipeVM> recipes = const [],
      this.filter = const Filter(),
      this.listStatus = const RecipeListStatus.loading()})
      : _recipes = recipes;

  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final String category;
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
  final Filter filter;
  @override
  @JsonKey()
  final RecipeListStatus listStatus;

  @override
  String toString() {
    return 'RecipeListState(offset: $offset, query: $query, category: $category, isFirstFetch: $isFirstFetch, recipes: $recipes, filter: $filter, listStatus: $listStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeListStateImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other.isFirstFetch, isFirstFetch) &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.listStatus, listStatus) ||
                other.listStatus == listStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      offset,
      query,
      category,
      const DeepCollectionEquality().hash(isFirstFetch),
      const DeepCollectionEquality().hash(_recipes),
      filter,
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
  factory _RecipeListState(
      {final int offset,
      final String query,
      final String category,
      final dynamic isFirstFetch,
      final List<RecipeVM> recipes,
      final Filter filter,
      final RecipeListStatus listStatus}) = _$RecipeListStateImpl;

  @override
  int get offset;
  @override
  String get query;
  @override
  String get category;
  @override
  dynamic get isFirstFetch;
  @override
  List<RecipeVM> get recipes;
  @override
  Filter get filter;
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
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeListStatusEmpty value) empty,
    required TResult Function(RecipeListStatusLoading value) loading,
    required TResult Function(RecipeListStatusLoaded value) loaded,
    required TResult Function(RecipeListStatusError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeListStatusEmpty value)? empty,
    TResult? Function(RecipeListStatusLoading value)? loading,
    TResult? Function(RecipeListStatusLoaded value)? loaded,
    TResult? Function(RecipeListStatusError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeListStatusEmpty value)? empty,
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
abstract class _$$RecipeListStatusEmptyImplCopyWith<$Res> {
  factory _$$RecipeListStatusEmptyImplCopyWith(
          _$RecipeListStatusEmptyImpl value,
          $Res Function(_$RecipeListStatusEmptyImpl) then) =
      __$$RecipeListStatusEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeListStatusEmptyImplCopyWithImpl<$Res>
    extends _$RecipeListStatusCopyWithImpl<$Res, _$RecipeListStatusEmptyImpl>
    implements _$$RecipeListStatusEmptyImplCopyWith<$Res> {
  __$$RecipeListStatusEmptyImplCopyWithImpl(_$RecipeListStatusEmptyImpl _value,
      $Res Function(_$RecipeListStatusEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeListStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecipeListStatusEmptyImpl implements RecipeListStatusEmpty {
  const _$RecipeListStatusEmptyImpl();

  @override
  String toString() {
    return 'RecipeListStatus.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeListStatusEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeListStatusEmpty value) empty,
    required TResult Function(RecipeListStatusLoading value) loading,
    required TResult Function(RecipeListStatusLoaded value) loaded,
    required TResult Function(RecipeListStatusError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeListStatusEmpty value)? empty,
    TResult? Function(RecipeListStatusLoading value)? loading,
    TResult? Function(RecipeListStatusLoaded value)? loaded,
    TResult? Function(RecipeListStatusError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeListStatusEmpty value)? empty,
    TResult Function(RecipeListStatusLoading value)? loading,
    TResult Function(RecipeListStatusLoaded value)? loaded,
    TResult Function(RecipeListStatusError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class RecipeListStatusEmpty implements RecipeListStatus {
  const factory RecipeListStatusEmpty() = _$RecipeListStatusEmptyImpl;
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
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
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
    required TResult Function(RecipeListStatusEmpty value) empty,
    required TResult Function(RecipeListStatusLoading value) loading,
    required TResult Function(RecipeListStatusLoaded value) loaded,
    required TResult Function(RecipeListStatusError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeListStatusEmpty value)? empty,
    TResult? Function(RecipeListStatusLoading value)? loading,
    TResult? Function(RecipeListStatusLoaded value)? loaded,
    TResult? Function(RecipeListStatusError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeListStatusEmpty value)? empty,
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
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
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
    required TResult Function(RecipeListStatusEmpty value) empty,
    required TResult Function(RecipeListStatusLoading value) loading,
    required TResult Function(RecipeListStatusLoaded value) loaded,
    required TResult Function(RecipeListStatusError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeListStatusEmpty value)? empty,
    TResult? Function(RecipeListStatusLoading value)? loading,
    TResult? Function(RecipeListStatusLoaded value)? loaded,
    TResult? Function(RecipeListStatusError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeListStatusEmpty value)? empty,
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
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
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
    required TResult Function(RecipeListStatusEmpty value) empty,
    required TResult Function(RecipeListStatusLoading value) loading,
    required TResult Function(RecipeListStatusLoaded value) loaded,
    required TResult Function(RecipeListStatusError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeListStatusEmpty value)? empty,
    TResult? Function(RecipeListStatusLoading value)? loading,
    TResult? Function(RecipeListStatusLoaded value)? loaded,
    TResult? Function(RecipeListStatusError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeListStatusEmpty value)? empty,
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

/// @nodoc
mixin _$Filter {
  int? get maxCalorie => throw _privateConstructorUsedError;
  Set<String> get dietaryPreference => throw _privateConstructorUsedError;
  Set<String> get intolerances => throw _privateConstructorUsedError;
  Set<String> get cuisinePreferences => throw _privateConstructorUsedError;

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterCopyWith<Filter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCopyWith<$Res> {
  factory $FilterCopyWith(Filter value, $Res Function(Filter) then) =
      _$FilterCopyWithImpl<$Res, Filter>;
  @useResult
  $Res call(
      {int? maxCalorie,
      Set<String> dietaryPreference,
      Set<String> intolerances,
      Set<String> cuisinePreferences});
}

/// @nodoc
class _$FilterCopyWithImpl<$Res, $Val extends Filter>
    implements $FilterCopyWith<$Res> {
  _$FilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxCalorie = freezed,
    Object? dietaryPreference = null,
    Object? intolerances = null,
    Object? cuisinePreferences = null,
  }) {
    return _then(_value.copyWith(
      maxCalorie: freezed == maxCalorie
          ? _value.maxCalorie
          : maxCalorie // ignore: cast_nullable_to_non_nullable
              as int?,
      dietaryPreference: null == dietaryPreference
          ? _value.dietaryPreference
          : dietaryPreference // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      intolerances: null == intolerances
          ? _value.intolerances
          : intolerances // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      cuisinePreferences: null == cuisinePreferences
          ? _value.cuisinePreferences
          : cuisinePreferences // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterImplCopyWith<$Res> implements $FilterCopyWith<$Res> {
  factory _$$FilterImplCopyWith(
          _$FilterImpl value, $Res Function(_$FilterImpl) then) =
      __$$FilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? maxCalorie,
      Set<String> dietaryPreference,
      Set<String> intolerances,
      Set<String> cuisinePreferences});
}

/// @nodoc
class __$$FilterImplCopyWithImpl<$Res>
    extends _$FilterCopyWithImpl<$Res, _$FilterImpl>
    implements _$$FilterImplCopyWith<$Res> {
  __$$FilterImplCopyWithImpl(
      _$FilterImpl _value, $Res Function(_$FilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxCalorie = freezed,
    Object? dietaryPreference = null,
    Object? intolerances = null,
    Object? cuisinePreferences = null,
  }) {
    return _then(_$FilterImpl(
      maxCalorie: freezed == maxCalorie
          ? _value.maxCalorie
          : maxCalorie // ignore: cast_nullable_to_non_nullable
              as int?,
      dietaryPreference: null == dietaryPreference
          ? _value._dietaryPreference
          : dietaryPreference // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      intolerances: null == intolerances
          ? _value._intolerances
          : intolerances // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      cuisinePreferences: null == cuisinePreferences
          ? _value._cuisinePreferences
          : cuisinePreferences // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$FilterImpl extends _Filter {
  const _$FilterImpl(
      {this.maxCalorie,
      final Set<String> dietaryPreference = const <String>{},
      final Set<String> intolerances = const <String>{},
      final Set<String> cuisinePreferences = const <String>{}})
      : _dietaryPreference = dietaryPreference,
        _intolerances = intolerances,
        _cuisinePreferences = cuisinePreferences,
        super._();

  @override
  final int? maxCalorie;
  final Set<String> _dietaryPreference;
  @override
  @JsonKey()
  Set<String> get dietaryPreference {
    if (_dietaryPreference is EqualUnmodifiableSetView)
      return _dietaryPreference;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_dietaryPreference);
  }

  final Set<String> _intolerances;
  @override
  @JsonKey()
  Set<String> get intolerances {
    if (_intolerances is EqualUnmodifiableSetView) return _intolerances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_intolerances);
  }

  final Set<String> _cuisinePreferences;
  @override
  @JsonKey()
  Set<String> get cuisinePreferences {
    if (_cuisinePreferences is EqualUnmodifiableSetView)
      return _cuisinePreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_cuisinePreferences);
  }

  @override
  String toString() {
    return 'Filter(maxCalorie: $maxCalorie, dietaryPreference: $dietaryPreference, intolerances: $intolerances, cuisinePreferences: $cuisinePreferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterImpl &&
            (identical(other.maxCalorie, maxCalorie) ||
                other.maxCalorie == maxCalorie) &&
            const DeepCollectionEquality()
                .equals(other._dietaryPreference, _dietaryPreference) &&
            const DeepCollectionEquality()
                .equals(other._intolerances, _intolerances) &&
            const DeepCollectionEquality()
                .equals(other._cuisinePreferences, _cuisinePreferences));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      maxCalorie,
      const DeepCollectionEquality().hash(_dietaryPreference),
      const DeepCollectionEquality().hash(_intolerances),
      const DeepCollectionEquality().hash(_cuisinePreferences));

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterImplCopyWith<_$FilterImpl> get copyWith =>
      __$$FilterImplCopyWithImpl<_$FilterImpl>(this, _$identity);
}

abstract class _Filter extends Filter {
  const factory _Filter(
      {final int? maxCalorie,
      final Set<String> dietaryPreference,
      final Set<String> intolerances,
      final Set<String> cuisinePreferences}) = _$FilterImpl;
  const _Filter._() : super._();

  @override
  int? get maxCalorie;
  @override
  Set<String> get dietaryPreference;
  @override
  Set<String> get intolerances;
  @override
  Set<String> get cuisinePreferences;

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterImplCopyWith<_$FilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
