import 'package:calendario_vacinacao/models/child.dart';
import 'package:calendario_vacinacao/pages/vaccine_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RegisteredChildPage extends StatelessWidget {
  final List<Child> registeredChild;

  const RegisteredChildPage({super.key, required this.registeredChild});

  void _navigateToVaccinePage(BuildContext context, Child child){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => VaccinePage(registeredChild: [child]))
    );
  }

  @override
  Widget build(BuildContext context) {
    return registeredChild.isEmpty
        ? const Center(child: Text("Não há crianças registradas"))
        : ListView.builder(
            itemCount: registeredChild.length,
            itemBuilder: (context, index) {
              final child = registeredChild[index];
              return ListTile(
                title: Text(
                  child.name,
                  style: const TextStyle(fontSize: 24),
                  ),
                subtitle:
                    Text('Sexo: ${child.gender} | Data de nascimento: ${DateFormat('dd/MM/yyyy').format(child.birthDate)}'),
                trailing: IconButton(
                  icon:  const Icon(Icons.child_friendly), onPressed: () => _navigateToVaccinePage(context, child),
                ),
              );
            });
  }
}
