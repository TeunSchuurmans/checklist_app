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
              labelText: 'email',
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
            ),
            MyTextField(
              labelText: 'password',
              controller: passwordController,
              keyboardType: TextInputType.text,
              toggleVisibility: true,
            ),
            MyTextField(
              labelText: 'confirm password',
              keyboardType: TextInputType.text,
              controller: confirmPasswordController,
              toggleVisibility: true,
            ),
            MyButton(
              content: 'register',
              function: () {
                Auth.register(emailController, passwordController,
                    confirmPasswordController);
              },
            )
          ],
        ),
      ),
    );
  }
}
