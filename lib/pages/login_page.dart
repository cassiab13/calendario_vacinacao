import 'package:calendario_vacinacao/components/background.dart';
import 'package:calendario_vacinacao/components/login_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login')
        ),
      body:const BackgroundDecoration(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: 
            [
              LoginField(),
            ],
          ),
        ),
      ),
    );
  }
}