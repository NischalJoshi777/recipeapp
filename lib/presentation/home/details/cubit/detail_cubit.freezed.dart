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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(RecipeDetailVM detailVM) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(RecipeDetailVM detailVM)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(RecipeDetailVM detailVM)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailStateLoading value) loading,
    required TResult Function(_DetailStateLoaded value) loaded,
    required TResult Function(_DetailStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailStateLoading value)? loading,
    TResult? Function(_DetailStateLoaded value)? loaded,
    TResult? Function(_DetailStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailStateLoading value)? loading,
    TResult Function(_DetailStateLoaded value)? loaded,
    TResult Function(_DetailStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
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
}

/// @nodoc
abstract class _$$DetailStateLoadingImplCopyWith<$Res> {
  factory _$$DetailStateLoadingImplCopyWith(_$DetailStateLoadingImpl value,
          $Res Function(_$DetailStateLoadingImpl) then) =
      __$$DetailStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailStateLoadingImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailStateLoadingImpl>
    implements _$$DetailStateLoadingImplCopyWith<$Res> {
  __$$DetailStateLoadingImplCopyWithImpl(_$DetailStateLoadingImpl _value,
      $Res Function(_$DetailStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DetailStateLoadingImpl implements _DetailStateLoading {
  const _$DetailStateLoadingImpl();

  @override
  String toString() {
    return 'DetailState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DetailStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(RecipeDetailVM detailVM) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(RecipeDetailVM detailVM)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(RecipeDetailVM detailVM)? loaded,
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
    required TResult Function(_DetailStateLoading value) loading,
    required TResult Function(_DetailStateLoaded value) loaded,
    required TResult Function(_DetailStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailStateLoading value)? loading,
    TResult? Function(_DetailStateLoaded value)? loaded,
    TResult? Function(_DetailStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailStateLoading value)? loading,
    TResult Function(_DetailStateLoaded value)? loaded,
    TResult Function(_DetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _DetailStateLoading implements DetailState {
  const factory _DetailStateLoading() = _$DetailStateLoadingImpl;
}

/// @nodoc
abstract class _$$DetailStateLoadedImplCopyWith<$Res> {
  factory _$$DetailStateLoadedImplCopyWith(_$DetailStateLoadedImpl value,
          $Res Function(_$DetailStateLoadedImpl) then) =
      __$$DetailStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RecipeDetailVM detailVM});

  $RecipeDetailVMCopyWith<$Res> get detailVM;
}

/// @nodoc
class __$$DetailStateLoadedImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailStateLoadedImpl>
    implements _$$DetailStateLoadedImplCopyWith<$Res> {
  __$$DetailStateLoadedImplCopyWithImpl(_$DetailStateLoadedImpl _value,
      $Res Function(_$DetailStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailVM = null,
  }) {
    return _then(_$DetailStateLoadedImpl(
      null == detailVM
          ? _value.detailVM
          : detailVM // ignore: cast_nullable_to_non_nullable
              as RecipeDetailVM,
    ));
  }

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeDetailVMCopyWith<$Res> get detailVM {
    return $RecipeDetailVMCopyWith<$Res>(_value.detailVM, (value) {
      return _then(_value.copyWith(detailVM: value));
    });
  }
}

/// @nodoc

class _$DetailStateLoadedImpl implements _DetailStateLoaded {
  const _$DetailStateLoadedImpl(this.detailVM);

  @override
  final RecipeDetailVM detailVM;

  @override
  String toString() {
    return 'DetailState.loaded(detailVM: $detailVM)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStateLoadedImpl &&
            (identical(other.detailVM, detailVM) ||
                other.detailVM == detailVM));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailVM);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStateLoadedImplCopyWith<_$DetailStateLoadedImpl> get copyWith =>
      __$$DetailStateLoadedImplCopyWithImpl<_$DetailStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(RecipeDetailVM detailVM) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(detailVM);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(RecipeDetailVM detailVM)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(detailVM);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(RecipeDetailVM detailVM)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(detailVM);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailStateLoading value) loading,
    required TResult Function(_DetailStateLoaded value) loaded,
    required TResult Function(_DetailStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailStateLoading value)? loading,
    TResult? Function(_DetailStateLoaded value)? loaded,
    TResult? Function(_DetailStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailStateLoading value)? loading,
    TResult Function(_DetailStateLoaded value)? loaded,
    TResult Function(_DetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _DetailStateLoaded implements DetailState {
  const factory _DetailStateLoaded(final RecipeDetailVM detailVM) =
      _$DetailStateLoadedImpl;

  RecipeDetailVM get detailVM;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailStateLoadedImplCopyWith<_$DetailStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailStateErrorImplCopyWith<$Res> {
  factory _$$DetailStateErrorImplCopyWith(_$DetailStateErrorImpl value,
          $Res Function(_$DetailStateErrorImpl) then) =
      __$$DetailStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
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
    Object? message = null,
  }) {
    return _then(_$DetailStateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailStateErrorImpl implements _DetailStateError {
  const _$DetailStateErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DetailState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStateErrorImplCopyWith<_$DetailStateErrorImpl> get copyWith =>
      __$$DetailStateErrorImplCopyWithImpl<_$DetailStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(RecipeDetailVM detailVM) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(RecipeDetailVM detailVM)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(RecipeDetailVM detailVM)? loaded,
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
    required TResult Function(_DetailStateLoading value) loading,
    required TResult Function(_DetailStateLoaded value) loaded,
    required TResult Function(_DetailStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailStateLoading value)? loading,
    TResult? Function(_DetailStateLoaded value)? loaded,
    TResult? Function(_DetailStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailStateLoading value)? loading,
    TResult Function(_DetailStateLoaded value)? loaded,
    TResult Function(_DetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DetailStateError implements DetailState {
  const factory _DetailStateError({required final String message}) =
      _$DetailStateErrorImpl;

  String get message;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailStateErrorImplCopyWith<_$DetailStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
