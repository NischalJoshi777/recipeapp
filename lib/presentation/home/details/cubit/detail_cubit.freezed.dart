// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailState {
  bool get isAddedToFavorites => throw _privateConstructorUsedError;
  RecipeDetailVM? get detailVM => throw _privateConstructorUsedError;
  DetailsDataState get detailsDataState => throw _privateConstructorUsedError;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call(
      {bool isAddedToFavorites,
      RecipeDetailVM? detailVM,
      DetailsDataState detailsDataState});

  $RecipeDetailVMCopyWith<$Res>? get detailVM;
  $DetailsDataStateCopyWith<$Res> get detailsDataState;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAddedToFavorites = null,
    Object? detailVM = freezed,
    Object? detailsDataState = null,
  }) {
    return _then(_value.copyWith(
      isAddedToFavorites: null == isAddedToFavorites
          ? _value.isAddedToFavorites
          : isAddedToFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
      detailVM: freezed == detailVM
          ? _value.detailVM
          : detailVM // ignore: cast_nullable_to_non_nullable
              as RecipeDetailVM?,
      detailsDataState: null == detailsDataState
          ? _value.detailsDataState
          : detailsDataState // ignore: cast_nullable_to_non_nullable
              as DetailsDataState,
    ) as $Val);
  }

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeDetailVMCopyWith<$Res>? get detailVM {
    if (_value.detailVM == null) {
      return null;
    }

    return $RecipeDetailVMCopyWith<$Res>(_value.detailVM!, (value) {
      return _then(_value.copyWith(detailVM: value) as $Val);
    });
  }

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailsDataStateCopyWith<$Res> get detailsDataState {
    return $DetailsDataStateCopyWith<$Res>(_value.detailsDataState, (value) {
      return _then(_value.copyWith(detailsDataState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailStateErrorImplCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$DetailStateErrorImplCopyWith(_$DetailStateErrorImpl value,
          $Res Function(_$DetailStateErrorImpl) then) =
      __$$DetailStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isAddedToFavorites,
      RecipeDetailVM? detailVM,
      DetailsDataState detailsDataState});

  @override
  $RecipeDetailVMCopyWith<$Res>? get detailVM;
  @override
  $DetailsDataStateCopyWith<$Res> get detailsDataState;
}

/// @nodoc
class __$$DetailStateErrorImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailStateErrorImpl>
    implements _$$DetailStateErrorImplCopyWith<$Res> {
  __$$DetailStateErrorImplCopyWithImpl(_$DetailStateErrorImpl _value,
      $Res Function(_$DetailStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAddedToFavorites = null,
    Object? detailVM = freezed,
    Object? detailsDataState = null,
  }) {
    return _then(_$DetailStateErrorImpl(
      isAddedToFavorites: null == isAddedToFavorites
          ? _value.isAddedToFavorites
          : isAddedToFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
      detailVM: freezed == detailVM
          ? _value.detailVM
          : detailVM // ignore: cast_nullable_to_non_nullable
              as RecipeDetailVM?,
      detailsDataState: null == detailsDataState
          ? _value.detailsDataState
          : detailsDataState // ignore: cast_nullable_to_non_nullable
              as DetailsDataState,
    ));
  }
}

/// @nodoc

class _$DetailStateErrorImpl implements _DetailStateError {
  const _$DetailStateErrorImpl(
      {this.isAddedToFavorites = false,
      this.detailVM,
      this.detailsDataState = const DetailsDataState.loading()});

  @override
  @JsonKey()
  final bool isAddedToFavorites;
  @override
  final RecipeDetailVM? detailVM;
  @override
  @JsonKey()
  final DetailsDataState detailsDataState;

  @override
  String toString() {
    return 'DetailState(isAddedToFavorites: $isAddedToFavorites, detailVM: $detailVM, detailsDataState: $detailsDataState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStateErrorImpl &&
            (identical(other.isAddedToFavorites, isAddedToFavorites) ||
                other.isAddedToFavorites == isAddedToFavorites) &&
            (identical(other.detailVM, detailVM) ||
                other.detailVM == detailVM) &&
            (identical(other.detailsDataState, detailsDataState) ||
                other.detailsDataState == detailsDataState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isAddedToFavorites, detailVM, detailsDataState);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStateErrorImplCopyWith<_$DetailStateErrorImpl> get copyWith =>
      __$$DetailStateErrorImplCopyWithImpl<_$DetailStateErrorImpl>(
          this, _$identity);
}

abstract class _DetailStateError implements DetailState {
  const factory _DetailStateError(
      {final bool isAddedToFavorites,
      final RecipeDetailVM? detailVM,
      final DetailsDataState detailsDataState}) = _$DetailStateErrorImpl;

  @override
  bool get isAddedToFavorites;
  @override
  RecipeDetailVM? get detailVM;
  @override
  DetailsDataState get detailsDataState;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailStateErrorImplCopyWith<_$DetailStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailsDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message, bool isAddToFavorites) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message, bool isAddToFavorites)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message, bool isAddToFavorites)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsDataStateLoading value) loading,
    required TResult Function(_DetailsDataStateLoaded value) loaded,
    required TResult Function(_DetailsDataStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsDataStateLoading value)? loading,
    TResult? Function(_DetailsDataStateLoaded value)? loaded,
    TResult? Function(_DetailsDataStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsDataStateLoading value)? loading,
    TResult Function(_DetailsDataStateLoaded value)? loaded,
    TResult Function(_DetailsDataStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsDataStateCopyWith<$Res> {
  factory $DetailsDataStateCopyWith(
          DetailsDataState value, $Res Function(DetailsDataState) then) =
      _$DetailsDataStateCopyWithImpl<$Res, DetailsDataState>;
}

/// @nodoc
class _$DetailsDataStateCopyWithImpl<$Res, $Val extends DetailsDataState>
    implements $DetailsDataStateCopyWith<$Res> {
  _$DetailsDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DetailsDataStateLoadingImplCopyWith<$Res> {
  factory _$$DetailsDataStateLoadingImplCopyWith(
          _$DetailsDataStateLoadingImpl value,
          $Res Function(_$DetailsDataStateLoadingImpl) then) =
      __$$DetailsDataStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailsDataStateLoadingImplCopyWithImpl<$Res>
    extends _$DetailsDataStateCopyWithImpl<$Res, _$DetailsDataStateLoadingImpl>
    implements _$$DetailsDataStateLoadingImplCopyWith<$Res> {
  __$$DetailsDataStateLoadingImplCopyWithImpl(
      _$DetailsDataStateLoadingImpl _value,
      $Res Function(_$DetailsDataStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DetailsDataStateLoadingImpl implements _DetailsDataStateLoading {
  const _$DetailsDataStateLoadingImpl();

  @override
  String toString() {
    return 'DetailsDataState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsDataStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message, bool isAddToFavorites) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message, bool isAddToFavorites)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message, bool isAddToFavorites)? error,
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
    required TResult Function(_DetailsDataStateLoading value) loading,
    required TResult Function(_DetailsDataStateLoaded value) loaded,
    required TResult Function(_DetailsDataStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsDataStateLoading value)? loading,
    TResult? Function(_DetailsDataStateLoaded value)? loaded,
    TResult? Function(_DetailsDataStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsDataStateLoading value)? loading,
    TResult Function(_DetailsDataStateLoaded value)? loaded,
    TResult Function(_DetailsDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _DetailsDataStateLoading implements DetailsDataState {
  const factory _DetailsDataStateLoading() = _$DetailsDataStateLoadingImpl;
}

/// @nodoc
abstract class _$$DetailsDataStateLoadedImplCopyWith<$Res> {
  factory _$$DetailsDataStateLoadedImplCopyWith(
          _$DetailsDataStateLoadedImpl value,
          $Res Function(_$DetailsDataStateLoadedImpl) then) =
      __$$DetailsDataStateLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailsDataStateLoadedImplCopyWithImpl<$Res>
    extends _$DetailsDataStateCopyWithImpl<$Res, _$DetailsDataStateLoadedImpl>
    implements _$$DetailsDataStateLoadedImplCopyWith<$Res> {
  __$$DetailsDataStateLoadedImplCopyWithImpl(
      _$DetailsDataStateLoadedImpl _value,
      $Res Function(_$DetailsDataStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DetailsDataStateLoadedImpl implements _DetailsDataStateLoaded {
  const _$DetailsDataStateLoadedImpl();

  @override
  String toString() {
    return 'DetailsDataState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsDataStateLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message, bool isAddToFavorites) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message, bool isAddToFavorites)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message, bool isAddToFavorites)? error,
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
    required TResult Function(_DetailsDataStateLoading value) loading,
    required TResult Function(_DetailsDataStateLoaded value) loaded,
    required TResult Function(_DetailsDataStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsDataStateLoading value)? loading,
    TResult? Function(_DetailsDataStateLoaded value)? loaded,
    TResult? Function(_DetailsDataStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsDataStateLoading value)? loading,
    TResult Function(_DetailsDataStateLoaded value)? loaded,
    TResult Function(_DetailsDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _DetailsDataStateLoaded implements DetailsDataState {
  const factory _DetailsDataStateLoaded() = _$DetailsDataStateLoadedImpl;
}

/// @nodoc
abstract class _$$DetailsDataStateErrorImplCopyWith<$Res> {
  factory _$$DetailsDataStateErrorImplCopyWith(
          _$DetailsDataStateErrorImpl value,
          $Res Function(_$DetailsDataStateErrorImpl) then) =
      __$$DetailsDataStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, bool isAddToFavorites});
}

/// @nodoc
class __$$DetailsDataStateErrorImplCopyWithImpl<$Res>
    extends _$DetailsDataStateCopyWithImpl<$Res, _$DetailsDataStateErrorImpl>
    implements _$$DetailsDataStateErrorImplCopyWith<$Res> {
  __$$DetailsDataStateErrorImplCopyWithImpl(_$DetailsDataStateErrorImpl _value,
      $Res Function(_$DetailsDataStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isAddToFavorites = null,
  }) {
    return _then(_$DetailsDataStateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAddToFavorites: null == isAddToFavorites
          ? _value.isAddToFavorites
          : isAddToFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DetailsDataStateErrorImpl implements _DetailsDataStateError {
  const _$DetailsDataStateErrorImpl(
      {required this.message, this.isAddToFavorites = false});

  @override
  final String message;
  @override
  @JsonKey()
  final bool isAddToFavorites;

  @override
  String toString() {
    return 'DetailsDataState.error(message: $message, isAddToFavorites: $isAddToFavorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsDataStateErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isAddToFavorites, isAddToFavorites) ||
                other.isAddToFavorites == isAddToFavorites));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, isAddToFavorites);

  /// Create a copy of DetailsDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsDataStateErrorImplCopyWith<_$DetailsDataStateErrorImpl>
      get copyWith => __$$DetailsDataStateErrorImplCopyWithImpl<
          _$DetailsDataStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message, bool isAddToFavorites) error,
  }) {
    return error(message, isAddToFavorites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message, bool isAddToFavorites)? error,
  }) {
    return error?.call(message, isAddToFavorites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message, bool isAddToFavorites)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, isAddToFavorites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsDataStateLoading value) loading,
    required TResult Function(_DetailsDataStateLoaded value) loaded,
    required TResult Function(_DetailsDataStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsDataStateLoading value)? loading,
    TResult? Function(_DetailsDataStateLoaded value)? loaded,
    TResult? Function(_DetailsDataStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsDataStateLoading value)? loading,
    TResult Function(_DetailsDataStateLoaded value)? loaded,
    TResult Function(_DetailsDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DetailsDataStateError implements DetailsDataState {
  const factory _DetailsDataStateError(
      {required final String message,
      final bool isAddToFavorites}) = _$DetailsDataStateErrorImpl;

  String get message;
  bool get isAddToFavorites;

  /// Create a copy of DetailsDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsDataStateErrorImplCopyWith<_$DetailsDataStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
