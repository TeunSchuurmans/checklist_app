import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class Auth {
  static User? get userState => FirebaseAuth.instance.currentUser;
  static String? get userUid => Auth.userState?.uid;
  static String? get userEmail => Auth.userState?.email;

  static Future<void> login(String email, String password) async {
    try {
      FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  static Future<void> register(
      String email, String password, String confirmPassword) async {
    if (password == confirmPassword) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
      } catch (e) {
        if (kDebugMode) {
          print(e);
        }
      }
    } else {
      if (kDebugMode) {
        print('password and confirm password no the same.');
      }
    }
  }

  static Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
