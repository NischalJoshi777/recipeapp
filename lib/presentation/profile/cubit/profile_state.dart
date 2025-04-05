part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ProfileStateModel()) ProfileStateModel profileModel,
    @Default(ProfileLoadStatus.loading()) ProfileLoadStatus profileLoadStatus,
  }) = _ProfileState;
}

@freezed
class ProfileLoadStatus with _$ProfileLoadStatus {
  const factory ProfileLoadStatus.loading() = ProfileLoadStatusLoading;

  const factory ProfileLoadStatus.error() = ProfileLoadStatusError;

  const factory ProfileLoadStatus.loaded() = ProfileLoadStatusLoaded;
}

@freezed
class ProfileStateModel with _$ProfileStateModel {
  const ProfileStateModel._();
  const factory ProfileStateModel({
    @Default('N/A') String userName,
    @Default('N/A') String email,
    String? photoUrl,
    DateTime? createdAt,
  }) = _ProfileStateModel;

  String get firstName => userName.split(' ').first;
}
