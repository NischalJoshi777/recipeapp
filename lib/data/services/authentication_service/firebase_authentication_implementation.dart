import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myrecipeapp/data/services/authentication_service/authentication_service.dart';

class FirebaseAuthenticationImplementation implements AuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  @override
  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        throw Exception('Google sign in failed');
      } else {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        final OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        final UserCredential firebaseUserCredentials =
            await _auth.signInWithCredential(credential);
        if (firebaseUserCredentials.user != null) {
          _createUserIfNotExist(firebaseUserCredentials.user!);
        }
      }
    } catch (e) {
      log(e.toString());
      throw Exception('Sign in failed');
    }
  }

  @override
  Future<void> signOutGoogle() async {
    try {
      await _auth.signOut();
    } catch (e) {
      log(e.toString());
      throw Exception('Sign out failed');
    }
  }

  @override
  Future<bool> isUserLoggedIn() async {
    try {
      final User? currentUser = _auth.currentUser;
      if (currentUser != null) {
        return true;
      }
      return false;
    } catch (e) {
      print(e.toString());
      throw Exception('Error'); //TODO: update
    }
  }

  Future<void> _createUserIfNotExist(User user) async {
    final userDoc = _fireStore.collection('users').doc(user.uid);
    final docSnapShot = await userDoc.get();
    if (!docSnapShot.exists) {
      await userDoc.set({
        'uid': user.uid,
        'email': user.email,
        'username': user.displayName ?? '', // Fallback to empty string if null
        'photoUrl': user.photoURL ?? '', // Fallback to empty string if null
        'createdAt': FieldValue.serverTimestamp(),
      });
      log('Created new user document for ${user.uid}');
    }
  }
}
