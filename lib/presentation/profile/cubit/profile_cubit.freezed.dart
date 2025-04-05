// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  ProfileStateModel get profileModel => throw _privateConstructorUsedError;
  ProfileLoadStatus get profileLoadStatus => throw _privateConstructorUsedError;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {ProfileStateModel profileModel, ProfileLoadStatus profileLoadStatus});

  $ProfileStateModelCopyWith<$Res> get profileModel;
  $ProfileLoadStatusCopyWith<$Res> get profileLoadStatus;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileModel = null,
    Object? profileLoadStatus = null,
  }) {
    return _then(_value.copyWith(
      profileModel: null == profileModel
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as ProfileStateModel,
      profileLoadStatus: null == profileLoadStatus
          ? _value.profileLoadStatus
          : profileLoadStatus // ignore: cast_nullable_to_non_nullable
              as ProfileLoadStatus,
    ) as $Val);
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileStateModelCopyWith<$Res> get profileModel {
    return $ProfileStateModelCopyWith<$Res>(_value.profileModel, (value) {
      return _then(_value.copyWith(profileModel: value) as $Val);
    });
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileLoadStatusCopyWith<$Res> get profileLoadStatus {
    return $ProfileLoadStatusCopyWith<$Res>(_value.profileLoadStatus, (value) {
      return _then(_value.copyWith(profileLoadStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileStateModel profileModel, ProfileLoadStatus profileLoadStatus});

  @override
  $ProfileStateModelCopyWith<$Res> get profileModel;
  @override
  $ProfileLoadStatusCopyWith<$Res> get profileLoadStatus;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileModel = null,
    Object? profileLoadStatus = null,
  }) {
    return _then(_$ProfileStateImpl(
      profileModel: null == profileModel
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as ProfileStateModel,
      profileLoadStatus: null == profileLoadStatus
          ? _value.profileLoadStatus
          : profileLoadStatus // ignore: cast_nullable_to_non_nullable
              as ProfileLoadStatus,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.profileModel = const ProfileStateModel(),
      this.profileLoadStatus = const ProfileLoadStatus.loading()});

  @override
  @JsonKey()
  final ProfileStateModel profileModel;
  @override
  @JsonKey()
  final ProfileLoadStatus profileLoadStatus;

  @override
  String toString() {
    return 'ProfileState(profileModel: $profileModel, profileLoadStatus: $profileLoadStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.profileModel, profileModel) ||
                other.profileModel == profileModel) &&
            (identical(other.profileLoadStatus, profileLoadStatus) ||
                other.profileLoadStatus == profileLoadStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileModel, profileLoadStatus);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final ProfileStateModel profileModel,
      final ProfileLoadStatus profileLoadStatus}) = _$ProfileStateImpl;

  @override
  ProfileStateModel get profileModel;
  @override
  ProfileLoadStatus get profileLoadStatus;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileLoadStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoadStatusLoading value) loading,
    required TResult Function(ProfileLoadStatusError value) error,
    required TResult Function(ProfileLoadStatusLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileLoadStatusLoading value)? loading,
    TResult? Function(ProfileLoadStatusError value)? error,
    TResult? Function(ProfileLoadStatusLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoadStatusLoading value)? loading,
    TResult Function(ProfileLoadStatusError value)? error,
    TResult Function(ProfileLoadStatusLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileLoadStatusCopyWith<$Res> {
  factory $ProfileLoadStatusCopyWith(
          ProfileLoadStatus value, $Res Function(ProfileLoadStatus) then) =
      _$ProfileLoadStatusCopyWithImpl<$Res, ProfileLoadStatus>;
}

/// @nodoc
class _$ProfileLoadStatusCopyWithImpl<$Res, $Val extends ProfileLoadStatus>
    implements $ProfileLoadStatusCopyWith<$Res> {
  _$ProfileLoadStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileLoadStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileLoadStatusLoadingImplCopyWith<$Res> {
  factory _$$ProfileLoadStatusLoadingImplCopyWith(
          _$ProfileLoadStatusLoadingImpl value,
          $Res Function(_$ProfileLoadStatusLoadingImpl) then) =
      __$$ProfileLoadStatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadStatusLoadingImplCopyWithImpl<$Res>
    extends _$ProfileLoadStatusCopyWithImpl<$Res,
        _$ProfileLoadStatusLoadingImpl>
    implements _$$ProfileLoadStatusLoadingImplCopyWith<$Res> {
  __$$ProfileLoadStatusLoadingImplCopyWithImpl(
      _$ProfileLoadStatusLoadingImpl _value,
      $Res Function(_$ProfileLoadStatusLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileLoadStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileLoadStatusLoadingImpl implements ProfileLoadStatusLoading {
  const _$ProfileLoadStatusLoadingImpl();

  @override
  String toString() {
    return 'ProfileLoadStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadStatusLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? loaded,
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
    required TResult Function(ProfileLoadStatusLoading value) loading,
    required TResult Function(ProfileLoadStatusError value) error,
    required TResult Function(ProfileLoadStatusLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileLoadStatusLoading value)? loading,
    TResult? Function(ProfileLoadStatusError value)? error,
    TResult? Function(ProfileLoadStatusLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoadStatusLoading value)? loading,
    TResult Function(ProfileLoadStatusError value)? error,
    TResult Function(ProfileLoadStatusLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadStatusLoading implements ProfileLoadStatus {
  const factory ProfileLoadStatusLoading() = _$ProfileLoadStatusLoadingImpl;
}

/// @nodoc
abstract class _$$ProfileLoadStatusErrorImplCopyWith<$Res> {
  factory _$$ProfileLoadStatusErrorImplCopyWith(
          _$ProfileLoadStatusErrorImpl value,
          $Res Function(_$ProfileLoadStatusErrorImpl) then) =
      __$$ProfileLoadStatusErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadStatusErrorImplCopyWithImpl<$Res>
    extends _$ProfileLoadStatusCopyWithImpl<$Res, _$ProfileLoadStatusErrorImpl>
    implements _$$ProfileLoadStatusErrorImplCopyWith<$Res> {
  __$$ProfileLoadStatusErrorImplCopyWithImpl(
      _$ProfileLoadStatusErrorImpl _value,
      $Res Function(_$ProfileLoadStatusErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileLoadStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileLoadStatusErrorImpl implements ProfileLoadStatusError {
  const _$ProfileLoadStatusErrorImpl();

  @override
  String toString() {
    return 'ProfileLoadStatus.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadStatusErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoadStatusLoading value) loading,
    required TResult Function(ProfileLoadStatusError value) error,
    required TResult Function(ProfileLoadStatusLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileLoadStatusLoading value)? loading,
    TResult? Function(ProfileLoadStatusError value)? error,
    TResult? Function(ProfileLoadStatusLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoadStatusLoading value)? loading,
    TResult Function(ProfileLoadStatusError value)? error,
    TResult Function(ProfileLoadStatusLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadStatusError implements ProfileLoadStatus {
  const factory ProfileLoadStatusError() = _$ProfileLoadStatusErrorImpl;
}

/// @nodoc
abstract class _$$ProfileLoadStatusLoadedImplCopyWith<$Res> {
  factory _$$ProfileLoadStatusLoadedImplCopyWith(
          _$ProfileLoadStatusLoadedImpl value,
          $Res Function(_$ProfileLoadStatusLoadedImpl) then) =
      __$$ProfileLoadStatusLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadStatusLoadedImplCopyWithImpl<$Res>
    extends _$ProfileLoadStatusCopyWithImpl<$Res, _$ProfileLoadStatusLoadedImpl>
    implements _$$ProfileLoadStatusLoadedImplCopyWith<$Res> {
  __$$ProfileLoadStatusLoadedImplCopyWithImpl(
      _$ProfileLoadStatusLoadedImpl _value,
      $Res Function(_$ProfileLoadStatusLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileLoadStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileLoadStatusLoadedImpl implements ProfileLoadStatusLoaded {
  const _$ProfileLoadStatusLoadedImpl();

  @override
  String toString() {
    return 'ProfileLoadStatus.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadStatusLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? loaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? loaded,
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
    required TResult Function(ProfileLoadStatusLoading value) loading,
    required TResult Function(ProfileLoadStatusError value) error,
    required TResult Function(ProfileLoadStatusLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileLoadStatusLoading value)? loading,
    TResult? Function(ProfileLoadStatusError value)? error,
    TResult? Function(ProfileLoadStatusLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoadStatusLoading value)? loading,
    TResult Function(ProfileLoadStatusError value)? error,
    TResult Function(ProfileLoadStatusLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadStatusLoaded implements ProfileLoadStatus {
  const factory ProfileLoadStatusLoaded() = _$ProfileLoadStatusLoadedImpl;
}

/// @nodoc
mixin _$ProfileStateModel {
  String get userName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of ProfileStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileStateModelCopyWith<ProfileStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateModelCopyWith<$Res> {
  factory $ProfileStateModelCopyWith(
          ProfileStateModel value, $Res Function(ProfileStateModel) then) =
      _$ProfileStateModelCopyWithImpl<$Res, ProfileStateModel>;
  @useResult
  $Res call(
      {String userName, String email, String? photoUrl, DateTime? createdAt});
}

/// @nodoc
class _$ProfileStateModelCopyWithImpl<$Res, $Val extends ProfileStateModel>
    implements $ProfileStateModelCopyWith<$Res> {
  _$ProfileStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? photoUrl = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileStateModelImplCopyWith<$Res>
    implements $ProfileStateModelCopyWith<$Res> {
  factory _$$ProfileStateModelImplCopyWith(_$ProfileStateModelImpl value,
          $Res Function(_$ProfileStateModelImpl) then) =
      __$$ProfileStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userName, String email, String? photoUrl, DateTime? createdAt});
}

/// @nodoc
class __$$ProfileStateModelImplCopyWithImpl<$Res>
    extends _$ProfileStateModelCopyWithImpl<$Res, _$ProfileStateModelImpl>
    implements _$$ProfileStateModelImplCopyWith<$Res> {
  __$$ProfileStateModelImplCopyWithImpl(_$ProfileStateModelImpl _value,
      $Res Function(_$ProfileStateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? email = null,
    Object? photoUrl = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$ProfileStateModelImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ProfileStateModelImpl extends _ProfileStateModel {
  const _$ProfileStateModelImpl(
      {this.userName = 'N/A',
      this.email = 'N/A',
      this.photoUrl,
      this.createdAt})
      : super._();

  @override
  @JsonKey()
  final String userName;
  @override
  @JsonKey()
  final String email;
  @override
  final String? photoUrl;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'ProfileStateModel(userName: $userName, email: $email, photoUrl: $photoUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateModelImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, email, photoUrl, createdAt);

  /// Create a copy of ProfileStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateModelImplCopyWith<_$ProfileStateModelImpl> get copyWith =>
      __$$ProfileStateModelImplCopyWithImpl<_$ProfileStateModelImpl>(
          this, _$identity);
}

abstract class _ProfileStateModel extends ProfileStateModel {
  const factory _ProfileStateModel(
      {final String userName,
      final String email,
      final String? photoUrl,
      final DateTime? createdAt}) = _$ProfileStateModelImpl;
  const _ProfileStateModel._() : super._();

  @override
  String get userName;
  @override
  String get email;
  @override
  String? get photoUrl;
  @override
  DateTime? get createdAt;

  /// Create a copy of ProfileStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileStateModelImplCopyWith<_$ProfileStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
