import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: const Color.fromARGB(255, 241, 92, 122),
      ),
      backgroundColor: const Color.fromARGB(255, 241, 198, 207),
      body: const Center(
        child: LoginField(),
      ),
    );
  }
}

class LoginField extends StatelessWidget {
  const LoginField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: 250,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nome do usuário',
            ),
          ),
        ),
        const SizedBox(height: 30),
        const SizedBox(
          width: 250,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Senha',
            ),
          ),
        ),
        const SizedBox(height: 30),
        FilledButton(
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          },
          style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                  const Color.fromARGB(255, 248, 132, 181)),
              fixedSize: WidgetStateProperty.all(const Size(150, 30))),
          child: const Text('Login'),
        )
      ],
    );
  }
}
