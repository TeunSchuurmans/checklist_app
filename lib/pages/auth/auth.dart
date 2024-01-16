import 'package:checklist_app/pages/auth/error.dart';
import 'package:checklist_app/pages/auth/login.dart';
import 'package:checklist_app/pages/main/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthOrMainPage extends StatefulWidget {
  const AuthOrMainPage({super.key});

  @override
  State<AuthOrMainPage> createState() => _AuthOrMainPageState();
}

class _AuthOrMainPageState extends State<AuthOrMainPage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
        if (snapshot.hasData) {
          return const HomePage();
        } else if (snapshot.hasError) {
          return const ErrorPage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
