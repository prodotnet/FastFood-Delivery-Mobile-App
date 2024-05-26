import 'package:fastfood_app/Pages/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fastfood_app/Pages/Themes/colorprovider.dart';
import 'auther/login_register.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        //theme provider

        ChangeNotifierProvider(
          create: (context) => Themepro(),
        ),

        //restruat
        ChangeNotifierProvider(
          create: (context) => Restaurant(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginRegisterPage(),
      theme: Provider.of<Themepro>(context).themeData,
    );
  }
}
