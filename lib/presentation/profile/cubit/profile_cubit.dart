import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myrecipeapp/data/services/user_detail_service/user_detail_service.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final UserDetailService userDetailService;

  ProfileCubit(this.userDetailService) : super(const ProfileState());

  Future<void> fetchUserDetails() async {
    try {
      emit(
          state.copyWith(profileLoadStatus: const ProfileLoadStatus.loading()));
      final response = await userDetailService.fetchUserDetails();
      final ProfileStateModel profileStateModel = ProfileStateModel(
        createdAt: response.createdAt,
        userName: response.username,
        email: response.email,
        photoUrl: response.photoUrl,
      );
      emit(
        state.copyWith(
          profileModel: profileStateModel,
          profileLoadStatus: const ProfileLoadStatus.loaded(),
        ),
      );
    } catch (e) {
      emit(state.copyWith(profileLoadStatus: const ProfileLoadStatus.loaded()));
    }
  }
}
