part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticating() = Authenticating;
  const factory AuthState.authenticated() = Authenticated;
  const factory AuthState.unauthenticating({String? message}) =
      Unauthenticating;
  const factory AuthState.unauthenticated({required String message}) =
      Unauthenticated;
}
