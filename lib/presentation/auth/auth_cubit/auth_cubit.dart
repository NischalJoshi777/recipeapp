import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myrecipeapp/data/services/authentication_service/authentication_service.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthenticationService authService;

  AuthCubit({required this.authService})
      : super(const AuthState.authenticating());

  Future<void> checkSession() async {
    emit(const AuthState.authenticating());
    Future.delayed(const Duration(seconds: 2));
    bool sessionActive = await authService.isUserLoggedIn();
    if (sessionActive) {
      emit(const AuthState.authenticated());
    } else {
      emit(const AuthState.unauthenticated(
          message: "Session not active login!"));
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      emit(const AuthState.authenticating());
      await authService.signInWithGoogle();
      emit(const AuthState.authenticated());
    } catch (e) {
      emit(const AuthState.unauthenticated(message: "Sign in failed!"));
    }
  }

  Future<void> signOut() async {
    try {
      await authService.signOutGoogle();
    } catch (e) {
      emit(const AuthState.unauthenticated(message: 'Error but logging out'));
    } finally {
      emit(const AuthState.unauthenticated(message: 'Logout Successful'));
    }
  }
}
