import 'package:fastfood_app/componenes/mytextfieldcomp.dart';
import 'package:flutter/material.dart';
import 'package:fastfood_app/componenes/buttons.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller =
      TextEditingController();
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
              "Register",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),

            const SizedBox(height: 25),
            //userName
            Mytextfield(
                controller: emailcontroller,
                hintText: "Email",
                obscureText: false),

            const SizedBox(height: 10),
            //Password

            Mytextfield(
                controller: passwordcontroller,
                hintText: "Password",
                obscureText: true),

            const SizedBox(height: 10),
            //Password

            Mytextfield(
                controller: confirmpasswordcontroller,
                hintText: "confirm Password",
                obscureText: true),

            const SizedBox(height: 20),

            Mybuttons(text: "Sign up", onTap: () {}),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an Account?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login",
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
