import 'package:flutter/material.dart';
import 'package:photoplay/screens/login_screen.dart';
import 'package:photoplay/screens/registration_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/registration',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/registration': (context) => const RegistrationScreen(),
        //'/forgot': (context) => const ForgotPassword(),
      },
    );
  }
}
