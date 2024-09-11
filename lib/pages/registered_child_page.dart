import 'package:calendario_vacinacao/models/child.dart';
import 'package:flutter/material.dart';

class RegisteredChildPage extends StatelessWidget {
  final List<Child> registeredChild;

  const RegisteredChildPage({super.key, required this.registeredChild});

  @override
  Widget build(BuildContext context) {
    return registeredChild.isEmpty
        ? const Center(child: Text("Não há crianças registradas"))
        : ListView.builder(
            itemCount: registeredChild.length,
            itemBuilder: (context, index) {
              final child = registeredChild[index];
              return ListTile(
                title: Text(child.name),
                subtitle: Text(child.gender),

              );
            });
  }
}
