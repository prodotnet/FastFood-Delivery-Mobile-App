import 'package:fastfood_app/componenes/mytextfieldcomp.dart';
import 'package:flutter/material.dart';
import 'package:fastfood_app/componenes/buttons.dart';
import 'package:fastfood_app/Pages/homepage.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  //login method

  void login() {
    /*

  fill out authe


  //navigete to home
 */

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.secondary,
            ),

            const SizedBox(height: 25),

            //message App Name
            Text(
              "Pro.Net App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),

            const SizedBox(height: 25),
            //userName
            Mytextfield(
              controller: emailcontroller,
              hintText: "Email",
              obscureText: false,
            ),

            const SizedBox(height: 10),
            //Password

            Mytextfield(
                controller: passwordcontroller,
                hintText: "Password",
                obscureText: true),

            const SizedBox(height: 20),

            Mybuttons(text: "Sign in", onTap: login),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have No Account?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register Now",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
