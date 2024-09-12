import 'package:calendario_vacinacao/components/background.dart';
import 'package:calendario_vacinacao/components/checkbox.dart';
import 'package:calendario_vacinacao/models/child.dart';
import 'package:calendario_vacinacao/models/vaccine.dart';
import 'package:flutter/material.dart';

class VaccinePage extends StatefulWidget {
  final List<Child> registeredChild;

  const VaccinePage({super.key, required this.registeredChild});

  @override
  State<StatefulWidget> createState() => _VaccinePageState();
}

class _VaccinePageState extends State<VaccinePage> {
  Child? _selectedChild;

  @override
  void initState() {
    super.initState();
    if (widget.registeredChild.isNotEmpty) {
      _selectedChild = widget.registeredChild.first;
    }
  }

  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: vaccines.length,
                  itemBuilder: (context, index) {
                    final vaccine = vaccines[index];
                    return Card(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      child: Text(
                                    vaccine.name,
                                  )),
                                  Expanded(
                                      child: Text(
                                          'Dose: ${vaccine.dose.toString()}')),
                                  Expanded(
                                      child: Text('Idade: ${vaccine.months.toString()} meses')),
                                  const Expanded(
                                    child: CheckboxExampleApp()
                                  )
                                ],
                              )
                            ],
                          ),
                        ));
                  }),
            )
          ],
        ));
  }
}
