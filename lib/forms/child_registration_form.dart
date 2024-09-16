import 'package:calendario_vacinacao/models/child.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChildRegistrationForm extends StatefulWidget {
  final Function(Child) registerChild;
  const ChildRegistrationForm({super.key, required this.registerChild});

  @override
  State<StatefulWidget> createState() => _ChildRegistrationFormState();
}

class _ChildRegistrationFormState extends State<ChildRegistrationForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _birthController = TextEditingController();
  DateTime? _selectedDate;
  String? _selectedGender;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? selectedBirthDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.blue,
              onPrimary: Colors.white,
              onSurface: Colors.black,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(),
            ),
          ),
          child: child!,
        );
      },
    );
    if (selectedBirthDate != null && selectedBirthDate != _selectedDate) {
      setState(() {
        _selectedDate = selectedBirthDate;
        _birthController.text =
            DateFormat('dd/MM/yyyy').format(selectedBirthDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.white54,
              border: OutlineInputBorder(),
              labelText: 'Digite o nome da criança',
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _birthController,
            readOnly: true,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.white54,
              border: OutlineInputBorder(),
              labelText: 'Data de nascimento',
              suffixIcon: Icon(Icons.calendar_today),
            ),
            onTap: () => _selectDate(context),
          ),
          const SizedBox(height: 16),
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.white54,
              labelText: 'Sexo',
              border: OutlineInputBorder(),
            ),
            value: _selectedGender,
            items: ['Masculino', 'Feminino'].map((String gender) {
              return DropdownMenuItem<String>(
                value: gender,
                child: Text(gender),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedGender = newValue;
              });
            },
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              final String name = _nameController.text;
              final DateTime? birthDate = _selectedDate;
              final String? gender = _selectedGender;

              if (name.isEmpty || birthDate == null || gender == null) {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Erro'),
                    content: const Text('Por favor, preencha todos os campos.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              } else {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Dados salvos com sucesso'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
                final child = Child(
                    name: name,
                    gender: gender,
                    birthDate: birthDate,
                    vaccines: []);
                widget.registerChild(child);
              }
            },
            child: const Text('Salvar'),
          ),
        ],
      ),
    );
  }
}
