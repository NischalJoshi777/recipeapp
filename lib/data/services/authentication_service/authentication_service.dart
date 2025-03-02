abstract class AuthenticationService {
  Future<void> signInWithGoogle();
  Future<void> signOutGoogle();
  Future<bool> isUserLoggedIn();
}
