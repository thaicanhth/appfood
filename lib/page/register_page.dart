import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({
    super.key,
    required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Lottie.network(
              'https://lottie.host/26e4b406-8c95-4282-8c6e-7b26df9138d2/FVqTYE20iM.json',
              width: 200,
              height: 200,
            ),
            //logo
            // Icon(
            //   Icons.lock_open_rounded,
            //   size: 100,
            //   color: Theme.of(context).colorScheme.inversePrimary,
            // ),
            SizedBox(
              height: 15,
            ),
            //message, ap slogan
            Text(
              "Let's create an account for you",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            SizedBox(
              height: 25,
            ),
            //email textfield
            MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false),
            SizedBox(
              height: 10,
            ),
            //password textfield
            MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true),
            SizedBox(
              height: 25,
            ),
            //confirm password textfield
            MyTextField(
                controller: confirmPasswordController,
                hintText: "confirm password",
                obscureText: true),
            SizedBox(
              height: 25,
            ),
            //sign up button
            MyButton(text: "Sign up", onTap: () {}),
            SizedBox(
              height: 25,
            ),
            // already have an account? Login here
            GestureDetector(
              onTap: widget.onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "already have an account?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Login now",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
