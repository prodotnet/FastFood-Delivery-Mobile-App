import 'package:fastfood_app/Pages/user_register.dart';
import 'package:fastfood_app/Pages/userlogin.dart';
import 'package:flutter/material.dart';

class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({super.key});

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPage();
}

class _LoginRegisterPage extends State<LoginRegisterPage> {
//initailly show  show login page
  bool showLogin = true;

//toggle between login and register
  void togglePage() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin) {
      return LoginPage(onTap: togglePage);
    } else {
      return RegisterPage(onTap: togglePage);
    }
  }
}
