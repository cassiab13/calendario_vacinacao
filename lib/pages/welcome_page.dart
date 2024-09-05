import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/background_welcome_page.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 40.0),
              child: Text(
                'Calendário de Vacinação',
                style: TextStyle(
                  fontSize: 46.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 241, 92, 122)
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(200, 50),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      child: const Text('Login'),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signin');
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(200, 50),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      child: const Text('Cadastro'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
