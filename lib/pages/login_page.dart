import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/mu_buttons.dart';
import 'package:food_delivery_app/components/my_textfields.dart';
import 'package:food_delivery_app/ffi/native_check_logpas.dart';
import 'package:ffi/ffi.dart';
import 'package:food_delivery_app/pages/home_page.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';
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
  String? erorrText;
  // login
  void login() async {
    // get instacne of auth service
    final _authService = AuthService();
    final login = emailController.text.toNativeUtf8();
    final password = passwordController.text.toNativeUtf8();
    final resultOfCppFunc = checkCredentials(login, password);

    // try to sign in
    if (resultOfCppFunc == 1) {
      print('open app like admin');
      erorrText = null;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    } else {
      erorrText = 'Не верный логин или пароль';
      print('show error');
    }

    if (erorrText != null) {
      try {
        await _authService.signInWithEmailPassword(
            emailController.text, passwordController.text);
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }
    // //navigation to home page
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => const HomePage(),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            // Icon(
            //   Icons.lock_open_rounded,
            //   size: 100,
            //   color: Theme.of(context).colorScheme.inversePrimary,
            // ),
            Lottie.asset(
              'assets/animation/10.json',
              height: 120,
            ),

            const SizedBox(
              height: 15,
            ),

            // msg, app slogan
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

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
            // sign in buutton
            MyPrimaryButton(
              text: "Sign in",
              onTap: login,
            ),

            const SizedBox(
              height: 10,
            ),
            // not a member? reg now

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
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
                    "Register now",
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
