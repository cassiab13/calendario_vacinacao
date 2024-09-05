import 'package:calendario_vacinacao/pages/login_page.dart';
import 'package:calendario_vacinacao/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/login': (context) => const LoginPage(),
        // '/signup': (context) => const SignUpPage(),
        // '/vaccine': (context) => const VaccinePage()
      },
    );
  }
}
