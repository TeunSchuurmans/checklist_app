import 'package:checklist_app/widgets/button.dart';
import 'package:flutter/material.dart';
import '../../classes/auth_manager.dart';
import '../../widgets/textfield.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextField(
              hintText: 'email',
              controller: emailController,
            ),
            MyTextField(
              hintText: 'password',
              controller: passwordController,
              toggleVisibility: true,
            ),
            MyTextField(
              hintText: 'confirm password',
              controller: confirmPasswordController,
              toggleVisibility: true,
            ),
            const MyButton(
              content: 'register',
              function: Auth.register,
            )
          ],
        ),
      ),
    );
  }
}
