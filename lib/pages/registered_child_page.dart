import 'package:calendario_vacinacao/components/background.dart';
import 'package:calendario_vacinacao/models/child.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RegisteredChildPage extends StatelessWidget {
  final List<Child> registeredChild;

  const RegisteredChildPage({super.key, required this.registeredChild});

  @override
  Widget build(BuildContext context) {
    return BackgroundDecoration(
        child: registeredChild.isEmpty
            ? const Center(
                child: Text(
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 24),
                    "Não há crianças registradas"))
            : ListView.builder(
                itemCount: registeredChild.length,
                itemBuilder: (context, index) {
                  final child = registeredChild[index];
                  return ListTile(
                    title: Container(
                        color: Colors.white54,
                        padding: const EdgeInsets.all(8.0),
                        child: Text(child.name,
                            style: const TextStyle(fontSize: 24))),
                    subtitle: Container(
                        color: Colors.white.withOpacity(0.5),
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Sexo: ${child.gender} | Data de nascimento: ${DateFormat('dd/MM/yyyy').format(child.birthDate)}')),
                  );
                }));
  }
}
