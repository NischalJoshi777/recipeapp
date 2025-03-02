import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myrecipeapp/data/services/authentication_service/authentication_service.dart';

class FirebaseAuthenticationImplementation implements AuthenticationService {
  @override
  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        throw Exception('Google sign in failed');
      } else {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        await FirebaseAuth.instance.signInWithCredential(credential);
        log('google signin successful');
      }
    } catch (e) {
      log(e.toString());
      throw Exception('Sign in failed');
    }
  }

  @override
  Future<void> signOutGoogle() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      log(e.toString());
      throw Exception('Sign in failed');
    }
  }

  @override
  Future<bool> isUserLoggedIn() async {
    try {
      final User? currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser != null) {
        return true;
      }
      return false;
    } catch (e) {
      throw Exception('Error'); //TODO: update
    }
  }
}
