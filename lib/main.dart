import 'package:flutter/material.dart';
import 'package:pet_fitness_app/constant.dart';
import 'package:pet_fitness_app/screens/auth_screens/login_screen.dart';
import 'package:pet_fitness_app/screens/auth_screens/register_screen.dart';
import 'package:pet_fitness_app/screens/auth_screens/reset_password_screen.dart';
import 'package:pet_fitness_app/widgets/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Friends',
      debugShowCheckedModeBanner: debugModeOn ? true : false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/forgot': (context) => const ResetPasswordScreen(),
      },
      home: const LoginScreen(),
    );
  }
}

