import 'package:checklist_app/widgets/button.dart';
import 'package:checklist_app/widgets/textfield.dart';
import 'package:flutter/material.dart';

import '../../classes/auth_manager.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextField(
              labelText: 'email',
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
            ),
            MyTextField(
              labelText: 'password',
              keyboardType: TextInputType.text,
              controller: passwordController,
              toggleVisibility: true,
            ),
            MyButton(
              content: 'login',
              function: () {
                Auth.login(emailController.text, passwordController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
