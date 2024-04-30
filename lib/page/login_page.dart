import 'package:appfood/components/my_button.dart';
import 'package:appfood/components/my_textfield.dart';
import 'package:appfood/page/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void login(){
    /*
    fill out authentication here...
     */
    // navigation to home page 
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),),);
  }
  late final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              "Food Delevery App",
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
            //sign in button
            MyButton(
                text: "Sign In",
                onTap: login),
            SizedBox(
              height: 25,
            ),
            // not a member? register now
            GestureDetector(
              onTap: widget.onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Register now",
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
