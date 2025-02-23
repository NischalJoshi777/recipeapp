// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookmarkListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BookmarkViewModel> bookmark) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<BookmarkViewModel> bookmark) deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BookmarkViewModel> bookmark)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<BookmarkViewModel> bookmark)? deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BookmarkViewModel> bookmark)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<BookmarkViewModel> bookmark)? deleteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarkListStateLoading value) loading,
    required TResult Function(BookmarkListStateLoaded value) loaded,
    required TResult Function(BookmarkListStateError value) error,
    required TResult Function(BookmarkListStateDeleteError value) deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkListStateLoading value)? loading,
    TResult? Function(BookmarkListStateLoaded value)? loaded,
    TResult? Function(BookmarkListStateError value)? error,
    TResult? Function(BookmarkListStateDeleteError value)? deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkListStateLoading value)? loading,
    TResult Function(BookmarkListStateLoaded value)? loaded,
    TResult Function(BookmarkListStateError value)? error,
    TResult Function(BookmarkListStateDeleteError value)? deleteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkListStateCopyWith<$Res> {
  factory $BookmarkListStateCopyWith(
          BookmarkListState value, $Res Function(BookmarkListState) then) =
      _$BookmarkListStateCopyWithImpl<$Res, BookmarkListState>;
}

/// @nodoc
class _$BookmarkListStateCopyWithImpl<$Res, $Val extends BookmarkListState>
    implements $BookmarkListStateCopyWith<$Res> {
  _$BookmarkListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarkListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BookmarkListStateLoadingImplCopyWith<$Res> {
  factory _$$BookmarkListStateLoadingImplCopyWith(
          _$BookmarkListStateLoadingImpl value,
          $Res Function(_$BookmarkListStateLoadingImpl) then) =
      __$$BookmarkListStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookmarkListStateLoadingImplCopyWithImpl<$Res>
    extends _$BookmarkListStateCopyWithImpl<$Res,
        _$BookmarkListStateLoadingImpl>
    implements _$$BookmarkListStateLoadingImplCopyWith<$Res> {
  __$$BookmarkListStateLoadingImplCopyWithImpl(
      _$BookmarkListStateLoadingImpl _value,
      $Res Function(_$BookmarkListStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarkListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BookmarkListStateLoadingImpl implements BookmarkListStateLoading {
  const _$BookmarkListStateLoadingImpl();

  @override
  String toString() {
    return 'BookmarkListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkListStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BookmarkViewModel> bookmark) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<BookmarkViewModel> bookmark) deleteError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BookmarkViewModel> bookmark)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<BookmarkViewModel> bookmark)? deleteError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BookmarkViewModel> bookmark)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<BookmarkViewModel> bookmark)? deleteError,
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
    required TResult Function(BookmarkListStateLoading value) loading,
    required TResult Function(BookmarkListStateLoaded value) loaded,
    required TResult Function(BookmarkListStateError value) error,
    required TResult Function(BookmarkListStateDeleteError value) deleteError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkListStateLoading value)? loading,
    TResult? Function(BookmarkListStateLoaded value)? loaded,
    TResult? Function(BookmarkListStateError value)? error,
    TResult? Function(BookmarkListStateDeleteError value)? deleteError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkListStateLoading value)? loading,
    TResult Function(BookmarkListStateLoaded value)? loaded,
    TResult Function(BookmarkListStateError value)? error,
    TResult Function(BookmarkListStateDeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BookmarkListStateLoading implements BookmarkListState {
  const factory BookmarkListStateLoading() = _$BookmarkListStateLoadingImpl;
}

/// @nodoc
abstract class _$$BookmarkListStateLoadedImplCopyWith<$Res> {
  factory _$$BookmarkListStateLoadedImplCopyWith(
          _$BookmarkListStateLoadedImpl value,
          $Res Function(_$BookmarkListStateLoadedImpl) then) =
      __$$BookmarkListStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BookmarkViewModel> bookmark});
}

/// @nodoc
class __$$BookmarkListStateLoadedImplCopyWithImpl<$Res>
    extends _$BookmarkListStateCopyWithImpl<$Res, _$BookmarkListStateLoadedImpl>
    implements _$$BookmarkListStateLoadedImplCopyWith<$Res> {
  __$$BookmarkListStateLoadedImplCopyWithImpl(
      _$BookmarkListStateLoadedImpl _value,
      $Res Function(_$BookmarkListStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarkListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmark = null,
  }) {
    return _then(_$BookmarkListStateLoadedImpl(
      null == bookmark
          ? _value._bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as List<BookmarkViewModel>,
    ));
  }
}

/// @nodoc

class _$BookmarkListStateLoadedImpl implements BookmarkListStateLoaded {
  const _$BookmarkListStateLoadedImpl(final List<BookmarkViewModel> bookmark)
      : _bookmark = bookmark;

  final List<BookmarkViewModel> _bookmark;
  @override
  List<BookmarkViewModel> get bookmark {
    if (_bookmark is EqualUnmodifiableListView) return _bookmark;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmark);
  }

  @override
  String toString() {
    return 'BookmarkListState.loaded(bookmark: $bookmark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkListStateLoadedImpl &&
            const DeepCollectionEquality().equals(other._bookmark, _bookmark));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bookmark));

  /// Create a copy of BookmarkListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkListStateLoadedImplCopyWith<_$BookmarkListStateLoadedImpl>
      get copyWith => __$$BookmarkListStateLoadedImplCopyWithImpl<
          _$BookmarkListStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BookmarkViewModel> bookmark) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<BookmarkViewModel> bookmark) deleteError,
  }) {
    return loaded(bookmark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BookmarkViewModel> bookmark)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<BookmarkViewModel> bookmark)? deleteError,
  }) {
    return loaded?.call(bookmark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BookmarkViewModel> bookmark)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<BookmarkViewModel> bookmark)? deleteError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(bookmark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarkListStateLoading value) loading,
    required TResult Function(BookmarkListStateLoaded value) loaded,
    required TResult Function(BookmarkListStateError value) error,
    required TResult Function(BookmarkListStateDeleteError value) deleteError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkListStateLoading value)? loading,
    TResult? Function(BookmarkListStateLoaded value)? loaded,
    TResult? Function(BookmarkListStateError value)? error,
    TResult? Function(BookmarkListStateDeleteError value)? deleteError,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkListStateLoading value)? loading,
    TResult Function(BookmarkListStateLoaded value)? loaded,
    TResult Function(BookmarkListStateError value)? error,
    TResult Function(BookmarkListStateDeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BookmarkListStateLoaded implements BookmarkListState {
  const factory BookmarkListStateLoaded(
      final List<BookmarkViewModel> bookmark) = _$BookmarkListStateLoadedImpl;

  List<BookmarkViewModel> get bookmark;

  /// Create a copy of BookmarkListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkListStateLoadedImplCopyWith<_$BookmarkListStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookmarkListStateErrorImplCopyWith<$Res> {
  factory _$$BookmarkListStateErrorImplCopyWith(
          _$BookmarkListStateErrorImpl value,
          $Res Function(_$BookmarkListStateErrorImpl) then) =
      __$$BookmarkListStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BookmarkListStateErrorImplCopyWithImpl<$Res>
    extends _$BookmarkListStateCopyWithImpl<$Res, _$BookmarkListStateErrorImpl>
    implements _$$BookmarkListStateErrorImplCopyWith<$Res> {
  __$$BookmarkListStateErrorImplCopyWithImpl(
      _$BookmarkListStateErrorImpl _value,
      $Res Function(_$BookmarkListStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarkListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BookmarkListStateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookmarkListStateErrorImpl implements BookmarkListStateError {
  const _$BookmarkListStateErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'BookmarkListState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkListStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BookmarkListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkListStateErrorImplCopyWith<_$BookmarkListStateErrorImpl>
      get copyWith => __$$BookmarkListStateErrorImplCopyWithImpl<
          _$BookmarkListStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BookmarkViewModel> bookmark) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<BookmarkViewModel> bookmark) deleteError,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BookmarkViewModel> bookmark)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<BookmarkViewModel> bookmark)? deleteError,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BookmarkViewModel> bookmark)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<BookmarkViewModel> bookmark)? deleteError,
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
    required TResult Function(BookmarkListStateLoading value) loading,
    required TResult Function(BookmarkListStateLoaded value) loaded,
    required TResult Function(BookmarkListStateError value) error,
    required TResult Function(BookmarkListStateDeleteError value) deleteError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkListStateLoading value)? loading,
    TResult? Function(BookmarkListStateLoaded value)? loaded,
    TResult? Function(BookmarkListStateError value)? error,
    TResult? Function(BookmarkListStateDeleteError value)? deleteError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkListStateLoading value)? loading,
    TResult Function(BookmarkListStateLoaded value)? loaded,
    TResult Function(BookmarkListStateError value)? error,
    TResult Function(BookmarkListStateDeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BookmarkListStateError implements BookmarkListState {
  const factory BookmarkListStateError({required final String message}) =
      _$BookmarkListStateErrorImpl;

  String get message;

  /// Create a copy of BookmarkListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkListStateErrorImplCopyWith<_$BookmarkListStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookmarkListStateDeleteErrorImplCopyWith<$Res> {
  factory _$$BookmarkListStateDeleteErrorImplCopyWith(
          _$BookmarkListStateDeleteErrorImpl value,
          $Res Function(_$BookmarkListStateDeleteErrorImpl) then) =
      __$$BookmarkListStateDeleteErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BookmarkViewModel> bookmark});
}

/// @nodoc
class __$$BookmarkListStateDeleteErrorImplCopyWithImpl<$Res>
    extends _$BookmarkListStateCopyWithImpl<$Res,
        _$BookmarkListStateDeleteErrorImpl>
    implements _$$BookmarkListStateDeleteErrorImplCopyWith<$Res> {
  __$$BookmarkListStateDeleteErrorImplCopyWithImpl(
      _$BookmarkListStateDeleteErrorImpl _value,
      $Res Function(_$BookmarkListStateDeleteErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarkListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmark = null,
  }) {
    return _then(_$BookmarkListStateDeleteErrorImpl(
      null == bookmark
          ? _value._bookmark
          : bookmark // ignore: cast_nullable_to_non_nullable
              as List<BookmarkViewModel>,
    ));
  }
}

/// @nodoc

class _$BookmarkListStateDeleteErrorImpl
    implements BookmarkListStateDeleteError {
  const _$BookmarkListStateDeleteErrorImpl(
      final List<BookmarkViewModel> bookmark)
      : _bookmark = bookmark;

  final List<BookmarkViewModel> _bookmark;
  @override
  List<BookmarkViewModel> get bookmark {
    if (_bookmark is EqualUnmodifiableListView) return _bookmark;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmark);
  }

  @override
  String toString() {
    return 'BookmarkListState.deleteError(bookmark: $bookmark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkListStateDeleteErrorImpl &&
            const DeepCollectionEquality().equals(other._bookmark, _bookmark));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bookmark));

  /// Create a copy of BookmarkListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkListStateDeleteErrorImplCopyWith<
          _$BookmarkListStateDeleteErrorImpl>
      get copyWith => __$$BookmarkListStateDeleteErrorImplCopyWithImpl<
          _$BookmarkListStateDeleteErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BookmarkViewModel> bookmark) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<BookmarkViewModel> bookmark) deleteError,
  }) {
    return deleteError(bookmark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BookmarkViewModel> bookmark)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<BookmarkViewModel> bookmark)? deleteError,
  }) {
    return deleteError?.call(bookmark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BookmarkViewModel> bookmark)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<BookmarkViewModel> bookmark)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteError != null) {
      return deleteError(bookmark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarkListStateLoading value) loading,
    required TResult Function(BookmarkListStateLoaded value) loaded,
    required TResult Function(BookmarkListStateError value) error,
    required TResult Function(BookmarkListStateDeleteError value) deleteError,
  }) {
    return deleteError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkListStateLoading value)? loading,
    TResult? Function(BookmarkListStateLoaded value)? loaded,
    TResult? Function(BookmarkListStateError value)? error,
    TResult? Function(BookmarkListStateDeleteError value)? deleteError,
  }) {
    return deleteError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkListStateLoading value)? loading,
    TResult Function(BookmarkListStateLoaded value)? loaded,
    TResult Function(BookmarkListStateError value)? error,
    TResult Function(BookmarkListStateDeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteError != null) {
      return deleteError(this);
    }
    return orElse();
  }
}

abstract class BookmarkListStateDeleteError implements BookmarkListState {
  const factory BookmarkListStateDeleteError(
          final List<BookmarkViewModel> bookmark) =
      _$BookmarkListStateDeleteErrorImpl;

  List<BookmarkViewModel> get bookmark;

  /// Create a copy of BookmarkListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkListStateDeleteErrorImplCopyWith<
          _$BookmarkListStateDeleteErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
