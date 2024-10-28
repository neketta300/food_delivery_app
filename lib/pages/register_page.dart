import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/mu_buttons.dart';
import 'package:food_delivery_app/components/my_textfields.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //final TextEditingController nicknameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(
              height: 25,
            ),

            // msg, app slogan
            Text(
              "Let's create account for you",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(
              height: 25,
            ),
            // nickname textfield
            // MyLogRegTextfield(
            //   hintText: "Nickname",
            //   obscureText: false,
            //   controller: nicknameController,
            // ),
            // const SizedBox(
            //   height: 10,
            // ),

            // email textfield
            MyLogRegTextfield(
              hintText: "Email",
              obscureText: false,
              controller: emailController,
            ),
            const SizedBox(
              height: 10,
            ),
            // password textfield
            MyLogRegTextfield(
              hintText: "Password",
              obscureText: true,
              controller: passwordController,
            ),
            const SizedBox(
              height: 10,
            ),
            // confirm password textfield
            MyLogRegTextfield(
              hintText: "Confirm passwod",
              obscureText: true,
              controller: confirmPasswordController,
            ),
            const SizedBox(
              height: 10,
            ),
            // sign in buutton
            MyPrimaryButton(
              text: "Sign up",
              onTap: () {},
            ),

            const SizedBox(
              height: 10,
            ),

            // already have an account? sign in

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
