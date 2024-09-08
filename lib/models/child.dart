import 'package:calendario_vacinacao/models/vaccine.dart';

class Child {
  final int? id;
  final String name;
  final String gender;
  final DateTime birthDate;
  List<Vaccine> vaccines = [];

  Child(
      {this.id,
      required this.name,
      required this.gender,
      required this.birthDate,
      required this.vaccines});
}
